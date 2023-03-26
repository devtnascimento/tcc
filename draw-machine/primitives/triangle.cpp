#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/glut.h>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
#include <iostream>

using namespace std;

class Triangle {

  private:
    vector<float> vertices;
    vector<string> log;
    unsigned int VBO, VBA, VAO, loc, start_index, program, VS, FS;
    string vs_path, fs_path;
    const char* vs_source;
    const char* fs_source;

    void set_shaders_sources(){
      
      ifstream vs_file(this->vs_path);
      ifstream fs_file(this->fs_path);
      if (!(vs_file.is_open() && fs_file.is_open())){
        cerr << "Failed to open a shader file" << endl;
        return;
      }
      
      stringstream vs_buffer, fs_buffer;
      vs_buffer << vs_file.rdbuf();
      fs_buffer << fs_file.rdbuf();

      vs_file.close();
      fs_file.close();

      this->vs_source = vs_buffer.str().c_str();
      this->fs_source = fs_buffer.str().c_str();
    }
    
    void build(){
      float* vertices = this->vertices.data();
      glGenBuffers(1, &this->VBO);
      glGenVertexArrays(1, &this->VAO);
      glBindVertexArray(this->VAO);
      glBindBuffer(GL_ARRAY_BUFFER, this->VBO);
      glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
      this->compile_shaders();
      this->link_program();
      glVertexAttribPointer(this->loc, 3, GL_FLOAT, GL_FALSE, 3*sizeof(float), (void*)0);
      glEnableVertexAttribArray(0);
    }


    
    void compile_shaders(){
      this->VS = glCreateShader(GL_VERTEX_SHADER);
      glShaderSource(this->VS, 1, &this->vs_source, NULL);
      glCompileShader(GL_VERTEX_SHADER);
      this->FS = glCreateShader(GL_FRAGMENT_SHADER);
      glShaderSource(this->FS, 1, &this->fs_source, NULL);
      glCompileShader(GL_FRAGMENT_SHADER);
      this->set_log(this->VS, "SHADER");
      this->set_log(this->FS, "SHADER");
    }

    void delete_shaders(){
      glDeleteShader(this->VS);
      glDeleteShader(this->FS);
    }

    void link_program(){
      this->program = glCreateProgram();
      glAttachShader(this->program, this->VS);
      glAttachShader(this->program, this->FS);
      glLinkProgram(this->program);
      this->set_log(this->program, "PROGRAM");
      this->delete_shaders();
    }
    
    void set_log(unsigned int object=0, string log_type="SHADER"){
      if (log_type == "PROGRAM"){
        int success;
        char infoLog[512];
        glGetProgramiv(object, GL_LINK_STATUS, &success);
        if (!success){
          glGetProgramInfoLog(object, 512, NULL, infoLog);
          string log(infoLog);
          string s = "[" + log_type + "] ";
          this->log.push_back(s + log);
        }
      }
      else{
        int success;
        char infoLog[512];
        glGetShaderiv(object, GL_COMPILE_STATUS, &success);
        if (!success){
          glGetShaderInfoLog(object, 512, NULL, infoLog);
          string log(infoLog);
          string s = "[" + log_type + "] ";
          this->log.push_back(s + log);
        }
      }
    }

  public:
    Triangle(vector<float>vertices, string vs_path, string fs_path){
      this->vertices = vertices;
      this->vs_path = vs_path;
      this->fs_path = fs_path;
      if (!this->vs_path.empty() && !this->fs_path.empty()){
        this->build();
      }
    }

    void draw(){
      glUseProgram(this->program);
      glBindVertexArray(this->VAO);
      glDrawArrays(GL_TRIANGLES, this->start_index, 3);
    }

};


