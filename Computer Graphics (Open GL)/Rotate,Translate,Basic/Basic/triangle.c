#include<windows.h>
#include <GL/glut.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.1416
static GLfloat spin = 0.0;//
static float	tx	=  0.0;
static float	ty	=  0.0;
static float	tz	=  0.0;






void draw_squ()
{

    glBegin(GL_LINES);
    {
        glColor3f(1.0,0.0,0.0);
        glVertex3f(20,0,0);
        glVertex3f(10,10,0);
        glVertex3f(10,10,0);
        glVertex3f(0,20,0);
        glVertex3f(0,20,0);
        glVertex3f(-10,10,0);
        glVertex3f(-10,10,0);
        glVertex3f(-20,0,0);
        glVertex3f(-20,0,0);
        glVertex3f(-10,0,0);
        glVertex3f(-10,0,0);
        glVertex3f(0,0,0);
        glVertex3f(0,0,0);
        glVertex3f(10,0,0);
        glVertex3f(10,0,0);
        glVertex3f(20,0,0);
        glVertex3f(10,10,0);
        glVertex3f(-10,10,0);
        glVertex3f(-10,10,0);
        glVertex3f(-10,0,0);
        glVertex3f(10,10,0);
        glVertex3f(10,0,0);
        glVertex3f(-10,10,0);
        glVertex3f(0,0,0);
        glVertex3f(10,10,0);
        glVertex3f(0,0,0);
        glVertex3f(0,20,0);
        glVertex3f(0,0,0);
    }
    glEnd();
}


void display(void)
{
    glClear(GL_COLOR_BUFFER_BIT| GL_DEPTH_BUFFER_BIT);

	glPushMatrix();

	glColor3f(0.0, 1.0, 0.0);
    glRotatef(spin, 0.0, 0.0, 1.0);// with respect to x,y,z
	glTranslatef(tx,ty,0);
	//circle(1,1);
    draw_squ();
	glPopMatrix();
	glFlush();
}
void spinDisplay_left(void)
{
   spin = spin + 1;
   if (spin > 360.0)
      spin = spin - 360.0;
   glutPostRedisplay();
}

void spinDisplay_right(void)
{
   spin = spin - 1;
   if (spin < 0)
      spin = spin + 360.0;
   glutPostRedisplay();
}
void my_keyboard(unsigned char key, int x, int y)
{

	switch (key) {

		case 'l':
			spinDisplay_left();
			break;

		case 'r':
			spinDisplay_right();
			break;

		case 's':
			 glutIdleFunc(NULL);
			 break;

	  default:
			break;
	}
}

void my_mouse(int button, int state, int x, int y)
{
   switch (button) {
      case GLUT_LEFT_BUTTON:
         if (state == GLUT_DOWN)
            glutIdleFunc(spinDisplay_left);
         break;
      case GLUT_MIDDLE_BUTTON:
      case GLUT_RIGHT_BUTTON:
         if (state == GLUT_DOWN)
			glutIdleFunc(spinDisplay_right);
          //glutIdleFunc(NULL); // make idle function inactive
         break;
      default:
         break;
   }
}


void init(void)
{
	glClearColor (0.0, 0.0, 0.0, 0.0);
	glOrtho(-25.0, 25.0, -25.0, 25.0, -25.0, 25.0);
}


void spe_key(int key, int x, int y)
{

	switch (key) {

		case GLUT_KEY_LEFT:
				tx -=5;
				glutPostRedisplay();
				break;

		case GLUT_KEY_RIGHT:
				tx +=5;
				glutPostRedisplay();
				break;

        case GLUT_KEY_DOWN:
				ty -=5;
				glutPostRedisplay();
				break;

		case GLUT_KEY_UP:
				ty +=5;
				glutPostRedisplay();
				break;
	  default:
			break;
	}
}

int main()
{
	glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
	glutInitWindowSize (500, 500);
	glutInitWindowPosition (100, 100);
	glutCreateWindow ("mist");
	init();
	glutDisplayFunc(display);
	glutSpecialFunc(spe_key);//up,down,left......
	glutMainLoop();
	return 0;   /* ANSI C requires main to return int. */
}

