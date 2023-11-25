#include<bits/stdc++.h>
using namespace std;

int main() {
     int n = 3; // Number of equations
    double a[n][n+1] = {
        {25, 5, 1, 106.8},
        {64, 8, 1, 177.2},
        {144, 12, 1, 279.2}
    };

    // Applying Gauss Elimination
    for(int i=0; i<n; i++) {
         if(a[i][i] == 0.0)
		  {
			   cout<<"Mathematical Error!";
			   exit(0);
		  }
          
        for(int j=i+1; j<n; j++) {
            double factor = a[j][i]/a[i][i];
            for(int k=0; k<=n; k++) {
                a[j][k] -= factor * a[i][k];
            }
        }
    }

    // Back Substitution
    double x[n];
    for(int i=n-1; i>=0; i--) {
        x[i] = a[i][n];
        for(int j=i+1; j<n; j++) {
            x[i] -= a[i][j] * x[j];
        }
        x[i] /= a[i][i];
    }

    // Displaying the solution
    cout << "Solution:\n";
    for(int i=0; i<n; i++) {
        cout << "a" << i+1 << " = " << x[i] << endl;
    }
    cout << endl;

    //for t=6
    double v = (x[0]*6*6)+(x[1]*6)+x[2];
    cout<< "Velocity at t=6 is "<< v << " m/s"<< endl;

    return 0;
}
