# voting-outcome

Using simple deep neural networks (DNN), this project aimed to predict voting outcome on the basis of people’s responses on various questions. In doing so, I pitted the neural networks against other neural networks on the Kaggle challenge: https://www.kaggle.com/c/can-we-predict-voting-outcomes#description. Moreover, by feature-engingeering the complex data provided by Kaggle as much as possible, the project tested the performance limitation of the simple DNN. 

![Test Image 1](Picture1.png)

The present project used simple DNN built from Tensorflow’s “DNNClassifier.” The DNN model takes a 107-dimensional input (demographic and questionnaire answers) and outputs a voting prediction: Republican or Democrat. The model contains three hidden layers, two layers with 50 nodes and one layer with 25 nodes.

## Data

The training and testing data from Kaggle came from Show of Hands, a mobile and web polling platform. For each participant, there were 107 questions to answer, including the political party the participant voted for. Of the 107 questions, 5 were demographic information, and 102 were questionnaire answers. Questions on the questionnaire are available on "Questoins.pdf".

## Getting Started

run ipynb files on Jupyter Notebook.
packages used: math, numpy, pandas, tensorflow, csv.
Each model's performance is displayed on "Training set accuracy" "and "Test set accuracy."

### Break down into tests

First_version:
The first version used year of birth (YOB) without any further preprocessing, because YOB itself is of numeric data type. For the questions that required binary answers, such as “Mac or PC?”, binary answers were represented as 1 and 0. 
```
"Yes" is represented as 1, whereas "No" as 0.
```

Second_version:
Modifying the data representation from the first version, the second version improved the data representation of YOB. YOB values were normalized such that all YOB values were between 0 and 1.
```
Year of Birth value of 1934 was normalized to .34.
```

Third_version:
Modifying data the representation from the second version, the third version improved the representation of empty answers. 

```
For the non-binary answers, the range of normalized values was between -1 and 1.
```

Fourth_version:
Modifying from the third version, the fourth version of preprocessing used the principal components (PC) of the input data to train the model. 



## Authors

* **Suhwan Choi** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.
Joshua Archer
