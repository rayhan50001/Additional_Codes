#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#include <windows.h>
#include <glut.h>

#define pi (2*acos(0.0))
#include<iostream>
using namespace std;

double cameraHeight;
double cameraAngle;
double cam_r_angle;
int drawgrid;
int drawaxes;
double angle;

class point
{
    public :
        double x,y,z;
};

point u,r,l,cam_pos;




void drawAxes()
{

		glColor3f(1.0, 1.0, 1.0);
		glBegin(GL_LINES);{
		    glColor3f(1.0, 0.0, 0.0);//Red color for X axis
			glVertex3f( 100,0,0);
			glVertex3f(-100,0,0);

            glColor3f(0.0, 1.0, 0.0);// Green color for Y axis
			glVertex3f(0,-100,0);
			glVertex3f(0, 100,0);

            glColor3f(0.0, 0.0, 1.0);// Blue color for Z axis
			glVertex3f(0,0, 100);
			glVertex3f(0,0,-100);
		}glEnd();

}


void drawGrid()
{
	int i;

		glColor3f(0.6, 0.6, 0.6);	//grey
		glBegin(GL_LINES);{
			for(i=-8;i<=8;i++){

				if(i==0)
					continue;	//SKIP the MAIN axes

				//lines parallel to Y-axis
				glVertex3f(i*10, -90, 0);
				glVertex3f(i*10,  90, 0);

				//lines parallel to X-axis
				glVertex3f(-90, i*10, 0);
				glVertex3f( 90, i*10, 0);
			}
		}glEnd();

}

void drawSquare(double a)
{
    //glColor3f(1.0,0.0,0.0);
	glBegin(GL_QUADS);{
        //Z axis front
        glColor3f(1.0, 0.0, 0.0);//Red color for X axis
		glVertex3f( a, a,a);
		glVertex3f( a,-a,a);
		glVertex3f(-a,-a,a);
		glVertex3f(-a, a,a);
        //Z axis back
        glColor3f(1.0, 1.0, 0.0);//Red color for X axis
		glVertex3f( a, a,-a);
		glVertex3f( a,-a,-a);
		glVertex3f(-a,-a,-a);
		glVertex3f(-a, a,-a);

		//Y axis front
		glColor3f(0.0, 1.0, 0.0);//Red color for X axis
		glVertex3f( a, a,a);
		glVertex3f( a, a,-a);
		glVertex3f(-a, a,-a);
		glVertex3f(-a, a,a);
		//Y axis back
		glColor3f(0.0, 1.0, 1.0);//Red color for X axis
		glVertex3f( a, -a,a);
		glVertex3f( a, -a,-a);
		glVertex3f(-a, -a,-a);
		glVertex3f(-a, -a,a);

		//X axis front
		glColor3f(0.0, 0.0, 1.0);//Red color for X axis
		glVertex3f( a, a,a);
		glVertex3f( a, a,-a);
		glVertex3f( a, -a,-a);
		glVertex3f( a, -a,a);
		//X axis back
		glColor3f(1.0, 0.0, 1.0);//Red color for X axis
		glVertex3f(-a, a,a);
		glVertex3f(-a, a,-a);
		glVertex3f(-a, -a,-a);
		glVertex3f(-a, -a,a);

	}glEnd();
	glPolygonMode(GL_FRONT_AND_BACK,GL_LINE);
}
















void keyboardListener(unsigned char key, int x,int y){
	switch(key){

		case '1':
            break;
        case '2':
            break;
        case '3':
            break;
        case '4':
            break;
        case '5':
            break;
        case '6':
            break;

		default:
			break;
	}
}


void specialKeyListener(int key, int x,int y){
	switch(key){
		case GLUT_KEY_DOWN:		//down arrow key
			break;
		case GLUT_KEY_UP:		// up arrow key
			break;

		case GLUT_KEY_RIGHT:
			break;
		case GLUT_KEY_LEFT:
			break;

		case GLUT_KEY_PAGE_UP:
			break;
		case GLUT_KEY_PAGE_DOWN:
			break;
		case GLUT_KEY_INSERT:
			break;

		case GLUT_KEY_HOME:
			break;
		case GLUT_KEY_END:
			break;

		default:
			break;
	}
}


void mouseListener(int button, int state, int x, int y){	//x, y is the x-y of the screen (2D)
	switch(button){
		case GLUT_LEFT_BUTTON:
			if(state == GLUT_DOWN){		// 2 times?? in ONE click? -- solution is checking DOWN or UP
				drawaxes=1-drawaxes;
			}
			break;

		case GLUT_RIGHT_BUTTON:
			//........
			break;

		case GLUT_MIDDLE_BUTTON:
			//........
			break;

		default:
			break;
	}
}



void display(){

	//clear the display
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glClearColor(0,0,0,0);	//color black
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	/********************
	/ set-up camera here
	********************/
	//load the correct matrix -- MODEL-VIEW matrix
	glMatrixMode(GL_MODELVIEW);

	//initialize the matrix
	glLoadIdentity();

	//now give three info
	//1. where is the camera (viewer)?
	//2. where is the camera looking?
	//3. Which direction is the camera's UP direction?
    //cameraAngle+=0.01;
    //glRotatef(45, 0, 0, 1);
    //gluLookAt(cam_pos.x,cam_pos.y,cam_pos.z, //position of cam
    //gluLookAt(100,100,100,	0,0,0,	0,0,1);
	gluLookAt(-50*cos(cameraAngle), sin(cameraAngle), cameraHeight,		0,0,0,		0,0,1000);

	//gluLookAt(cam_pos.x,cam_pos.y,cam_pos.z, cam_pos.x+l.x,cam_pos.y+l.y,cam_pos.z+l.z,	u.x,u.y,u.z);


	//again select MODEL-VIEW
	glMatrixMode(GL_MODELVIEW);

	/****************************
	/ Add your objects from here
	****************************/
	//add objects

	//drawAxes();
	//drawGrid();
    drawSquare(50);
	//ADD this line in the end --- if you use double buffer (i.e. GL_DOUBLE)
	glutSwapBuffers();
}


void animate(){

	//angle+=0.05;
	//codes for any changes in Models, Camera
	glutPostRedisplay();
}

void init(){
	//codes for initialization
	drawgrid=0;
	drawaxes=1;
	cameraHeight=150.0;
	cameraAngle=1.0;
	cam_r_angle = 0.01;
	angle=1;

	//camera
	cam_pos.x = 100;
	cam_pos.y = 100;
    cam_pos.z = 0;

    l.x = -1/sqrt(2);
    l.y = -1/sqrt(2);
    l.z = 0;

    r.x = -1/sqrt(2);
    r.y = 1/sqrt(2);
    r.z = 0;

    u.x = 0;
    u.y = 0;
    u.z = 1;

	//clear the screen
	glClearColor(0,0,0,0);

	/************************
	/ set-up projection here
	************************/
	//load the PROJECTION matrix
	glMatrixMode(GL_PROJECTION);

	//initialize the matrix
	glLoadIdentity();

	//give PERSPECTIVE parameters
	gluPerspective(80,	1,	1,	1000.0);
	//field of view in the Y (vertically)
	//aspect ratio that determines the field of view in the X direction (horizontally)
	//near distance
	//far distance
}

int main(int argc, char **argv){

	glutInit(&argc,argv);
	glutInitWindowSize(600, 600);
	glutInitWindowPosition(0, 0);
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGB);	//Depth, Double buffer, RGB color

	glutCreateWindow("My OpenGL Program");

	init();

	glEnable(GL_DEPTH_TEST);	//enable Depth Testing

	glutDisplayFunc(display);	//display callback function
	glutIdleFunc(animate);		//what you want to do in the idle time (when no drawing is occuring)

	glutKeyboardFunc(keyboardListener);
	glutSpecialFunc(specialKeyListener);
	glutMouseFunc(mouseListener);

	glutMainLoop();		//The main loop of OpenGL

	return 0;
}
