
DROP TABLE IF EXISTS `ARTICLES`;
CREATE TABLE IF NOT EXISTS ARTICLES (
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	heading TEXT,
	author VARCHAR(50),
	body TEXT,
	description TEXT,
	thumbnail VARCHAR(50),
	created_at DATETIME
);
insert into ARTICLES (id, heading, description, thumbnail, body, author, created_at) values (1, 'How Principal Component Analysis (PCA) works',

 'PCA, is a dimensionality-reduction method that is often used to reduce the dimensionality of large data sets.',

  'assets/img/pca.png',

   'Whoever tried to build <b>machine learning models </b> with many features would already know the glims about the concept of principal component analysis, In short <b>PCA</b>. <br><br> 

   The inclusion of more features in the implementation of machine learning algorithms models might lead to worsening performance issues. The increase in the number of features will not always improve classification accuracy.

When enough features are not present in the data, the model is likely to underfit, and when data contains too many features, it is expected to overfit or underfit. This phenomenon is known as the curse of dimensionality.

Therefore, we apply dimensionality reduction by selecting the optimal set of lower dimensionality features in order to improve classification accuracy. <br><br>

We know that as the number of features or dimensions grows in a dataset, the available data which we need to generalize grows exponentially and becomes sparse. 

So, in high dimensional data The objects appear to be dissimilar and sparse, preventing common data organization strategies from being efficient. <br><br>

To accurately predict the outcome for a given input data sample, the supervised machine learning models are trained. 

When the model is under training. Some part of the data is used for the model training, and the rest is used to evaluate how the model performs on unseen data. 

This evaluation step helps us gain an understanding of whether the model is generalized or not. 

You can consider any of the below for splitting the dataset into train and test.<br>

Building a decision tree by splitting the data into train and test datasets. <br>

Building a random forest algorithm in python. <br><br>

Model generalization can be defined as the ability of the model to predict the outcome for an unseen input data accurately. 

It is mandatory that the unseen input data should come from the same distribution as the one used to train the model.

The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets.

Model generalization can be defined as the ability of the model to predict the outcome for an unseen input data accurately. 

It is mandatory that the unseen input data should come from the same distribution as the one used to train the model.

The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets. <br><br>', 'Anber Arif', '2020-10-06 10:51:13');



insert into ARTICLES (id, heading, description, thumbnail, body, author, created_at) values (2, 'POPULAR FEATURE SELECTION METHODS IN MACHINE LEARNING',

 'Feature selection, also known as variable selection, is the process of selecting a subset of relevant features (variables, predictors) for use in model construction.',

  'assets/img/feature.png',

   'Feature selection is the key influence factor for building accurate <b>machine learning models</b>. 

   Let’s say for any given dataset the machine learning model learns the mapping between the input features and the target variable. 

So, for a new dataset, where the target is unknown, the model can accurately predict the target variable. 

In machine learning, many factors affect the performance of a model, and they include: . <br><br> 

Algorithm Choice. <br>

The features used to train the model. <br>

Parameters used in the algorithm. <br>

Quality of the dataset. <br><br>

Occasionally in a dataset, the set of features in their raw form do not provide the optimal information to train and to perform the prediction.

Therefore, it is beneficial to discard the conflicting and unnecessary features from our dataset by the process known as feature selection methods or feature selection techniques.


We can think of the feature selection methods in terms of supervised and unsupervised methods.

The methods that attempt to discover the relationship between the input variables also called independent variables and the target variable, are termed as the supervised methods. 

They intend to identify the relevant features for achieving the high accurate model while relying on the labeled data availability. <br>

Examples of supervised learning algorithms are: <br>

Linear Regression. <br>
Logistic Regression. <br>
Decision Trees. <br>
Neural Networks. <br> <br>

<b> Wrapper Feature Selection Methods </b><br><br>
The wrapper methods create several models which are having different subsets of input feature variables. 

Later the selected features which result in the best performing model in accordance with the performance metric.

The wrapper methods are unconcerned with the variable types, though they can be computationally expensive.

A well-known example of a wrapper feature selection method is Recursive Feature Elimination (RFE). 

RFE performs the evaluation of multiple models using procedures that add or remove predictor variables to find the optimal combination that maximizes the model’s performance. <br><br>


The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets. <br><br>',
 'Anber Arif', '2020-10-06 10:51:13');










insert into ARTICLES (id, heading, description, thumbnail, body, author, created_at) values (3, 'CROSS VALIDATION IN MACHINE LEARNING',

 'Cross-validation is a statistical method used to estimate the skill of machine learning models.',

  'assets/img/crossval.png',

   'It is mostly used while building machine learning models. It compares and selects a model for a given predictive modeling problem, assesses the models’ predictive performance. 

Later judges how they perform outside to a new data set, also known as test data. 

The motivation to use cross validation techniques is that we are holding it to a training dataset when we fit a model.

In this tutorial, along with cross validation we will also have a soft focus on the k-fold cross-validation procedure for evaluating the performance of the machine learning models.

Toward the end of this instructional exercise, you will become more acquainted with the below topics:  <br><br> 

Various types of cross-validation among which k-fold cross-validation is the most commonly used. <br>

The features used to train the model. <br>

K-fold cross-validation is a resampling procedure that estimates the skill of the machine learning model on new data. <br>

Some common strategies that we can use to select the value of k for our dataset <br>

Common variations in cross-validation such as stratified and repeated that are available in scikit-learn. <br><br>



Whenever a statistical model or a machine learning algorithm captures the data’s noise, underfitting comes into play. 

Intuitively, overfitting occurs when the machine learning algorithm or the model fits the data too well. Whenever overfitting occurs, the model gives a good performance and accuracy on the training data set but a low accuracy on new unseen data sets.

Contrary to that, whenever a statistical model or a machine learning algorithm cannot capture the data’s underlying trends, under-fitting comes into play.

Intuitively, under-fitting occurs when the the model does not fit the information well enough. It can be said that under-fitting is a consequence of a straightforward model. 

The term “simple” means the underlying missing data of the model is not adequately handled. The irrelevant features that do not contribute much to the predictor variable are not removed. <br><br>


<b> How can we prevent Model Overfitting </b><br><br>

In machine learning, a significant challenge with overfitting is that we are unaware of how our model will perform on the new data (test data) until we test it ourselves.

Generally we split our initial dataset into two subsets, i-e, training, and test subsets, to address this issue.
The wrapper methods create several models which are having different subsets of input feature variables. 

If we use a smart way to use the available initial dataset to multiple test datasets, we can overcome the issue of overfitting. As now our model learns on various train datasets.

This smart is nothing but cross validation. This makes more sense, when we explain how we can create multiple train datasets in the upcoming sections of this article.

Later the selected features which result in the best performing model in accordance with the performance metric.

The wrapper methods are unconcerned with the variable types, though they can be computationally expensive.

A well-known example of a wrapper feature selection method is Recursive Feature Elimination (RFE). 

RFE performs the evaluation of multiple models using procedures that add or remove predictor variables to find the optimal combination that maximizes the model’s performance. <br><br>


The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets. <br><br>',
 'Anber Arif', '2020-10-06 10:51:13');


















insert into ARTICLES (id, heading, description, thumbnail, body, author, created_at) values (4, 'FIVE MOST POPULAR UNSUPERVISED LEARNING ALGORITHMS',

 'Today we are going to learn about the popular unsupervised learning algorithms in machine learning.',

  'assets/img/unsupervised.png',

   '<b>Let’s start the article by discussing unsupervised learning. </b><br><br>

Unsupervised learning is a machine learning approach in which models do not have any supervisor to guide them. Models themselves find the hidden patterns and insights from the provided data. 

It mainly handles the unlabelled data. Somebody can compare it to learning, which occurs when a student solves problems without a teacher’s supervision. 

We cannot apply unsupervised learning directly to a regression or classification problem. Because like supervised learning, we don’t have the input data with the corresponding output label. 

Unsupervised learning aims to discover the dataset’s underlying pattern, assemble that data according to similarities, and express that dataset in a precise format.

Unsupervised Learning Algorithms allow users to perform more advanced processing jobs compared to supervised learning.

However, unsupervised learning can be more irregular compared with other methods.<br><br>


<b>Why use an Unsupervised Learning algorithm?</b> <br><br> 

It is similar to how a  human learns. It involves thinking by experiences, which moves it closer to real AI. <br>

It works on unlabeled data, which makes unsupervised learning further critical as real-world data is mostly unlabelled. <br>

It helps look for useful insights from the data. <br>

Common variations in cross-validation such as stratified and repeated that are available in scikit-learn. <br><br>



K-Means Clustering is an Unsupervised Learning algorithm. It arranges the unlabeled dataset into several clusters. 

Here K denotes the number of pre-defined groups. K can hold any random value, as if K=3, there will be three clusters, and for K=4, there will be four clusters. 

It is a repetitive algorithm that splits the given unlabeled dataset into K clusters. 

Each dataset belongs to only one group that has related properties. It enables us to collect the data into several groups. 

It is a handy method to identify the categories of groups in the given dataset without training.<br><br>


<b> Hierarchical clustering </b><br><br>

Hierarchical clustering, also known as Hierarchical cluster analysis. It is an unsupervised clustering algorithm. It includes building clusters that have a preliminary order from top to bottom.

For example, All files and folders on the hard disk are in a hierarchy.

The algorithm clubs related objects into groups named clusters. Finally, we get a set of clusters or groups. Here each cluster is different from the other cluster. 

Also, the data points in each cluster are broadly related to each other.

In an agglomerative hierarchical algorithm, each data point is considered a single cluster. 

Then these clusters successively unite or agglomerate (bottom-up approach) the clusters’ sets. The hierarchy of the clusters is shown using a dendrogram.

RFE performs the evaluation of multiple models using procedures that add or remove predictor variables to find the optimal combination that maximizes the model’s performance. <br><br>


The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets. <br><br>',
 'Saumya Awasthi', '2020-10-06 10:51:13');













insert into ARTICLES (id, heading, description, thumbnail, body, author, created_at) values (5, 'How Ridge Regression Works',

 'Ridge regression is the regularized form of linear regression.',

  'assets/img/ridge.png',

   'Before we learn about ridge regression, we should know about how linear regression works. Don’t forget, These pools of regression algorithms fall under the supervised learning algorithms category.

Any modeling task that involves predicting a numerical value given a set of input features termed as regression.  In other words, regression tries to estimate the expected target value when we provide the known input features.

Linear regression is assumed to be the standard algorithm for identifying the linear relationship between the target variable and the input features.

In the above image, the green dots are the actual values, and the red line is the regression line, fitted for the actual data. To populate the equation, we use the line equation. <br><br>

<b> Y = mX + C </b> <br><br>

In mathematical terms: <br><br>

<b>

Y is the predicted value. <br>
X is feature value. <br>
m is the coefficients or weights. <br>
C is the bias value. </b> <br> <br>



To create the line (red) using the actual value, the regression model will iterate and recalculate the m (coefficient) and c (bias) values while trying to reduce the loss values with the proper loss function. 

 In an extension to the linear regression that encourages the models which use small coefficient values, penalties added to the loss function during the training period. 

These extensions were termed as the penalized linear regression or regularized linear regression.

So, ridge regression is a famous regularized linear regression which makes use of the L2 penalty. This penalty shrinks the coefficients of those input variables which have not contributed less in the prediction task.

With this understanding,  let’s learn about ridge regression.

  <br><br> 
<b> How Ridge Regression Works.</b> <br>


In linear regression, a linear relationship exists between the input features and the target variable. The association is a line in the case of a single input variable. 

Still, with the higher dimensions, the relationship can be assumed to be a hyperplane which connects the input features to the target variable. The coefficients can be found by the optimization method to minimize the error between the predicted output i-e; that and the expected output i-e; y.

Linear regression may encounter problems in which the models stability. In which the loss function is modified and includes additional costs for a model with relatively large coefficients.

The linear regression models having the revised version of the loss functions referred to as "Penalized or Regularized Linear Regression."<br><br>



Whenever a statistical model or a machine learning algorithm captures the data’s noise, underfitting comes into play. 

Intuitively, overfitting occurs when the machine learning algorithm or the model fits the data too well. Whenever overfitting occurs, the model gives a good performance and accuracy on the training data set but a low accuracy on new unseen data sets.

Contrary to that, whenever a statistical model or a machine learning algorithm cannot capture the data’s underlying trends, under-fitting comes into play.

Intuitively, under-fitting occurs when the the model does not fit the information well enough. It can be said that under-fitting is a consequence of a straightforward model. 

The term “simple” means the underlying missing data of the model is not adequately handled. The irrelevant features that do not contribute much to the predictor variable are not removed. <br><br>


<b> How can we prevent Model Overfitting </b><br><br>

In machine learning, a significant challenge with overfitting is that we are unaware of how our model will perform on the new data (test data) until we test it ourselves.

Generally we split our initial dataset into two subsets, i-e, training, and test subsets, to address this issue.
The wrapper methods create several models which are having different subsets of input feature variables. 

If we use a smart way to use the available initial dataset to multiple test datasets, we can overcome the issue of overfitting. As now our model learns on various train datasets.

This smart is nothing but cross validation. This makes more sense, when we explain how we can create multiple train datasets in the upcoming sections of this article.

Later the selected features which result in the best performing model in accordance with the performance metric.

The wrapper methods are unconcerned with the variable types, though they can be computationally expensive.

A well-known example of a wrapper feature selection method is Recursive Feature Elimination (RFE). 

RFE performs the evaluation of multiple models using procedures that add or remove predictor variables to find the optimal combination that maximizes the model’s performance. <br><br>


The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets. <br><br>',
 'Anber Arif', '2020-10-06 10:51:13');












insert into ARTICLES (id, heading, description, thumbnail, body, author, created_at) values (6, 'FIVE KEY ASSUMPTIONS OF LINEAR REGRESSION ALGORITHM',

 'Nearly 80% of the people build linear regression models without checking the basic assumptions of linear regression.',

  'assets/img/linearreg.png',

   'Just hold for a second and think. How many times have you built linear regression models without checking the linear regression assumptions?

If you are not aware about the linear regression algorithm. It is a famous supervised machine learning algorithm that represents the linear relationship between a dependent variable and independent variables.

It is easy to understand and implement. However, just writing a few lines of code won’t work as expected.

Because before implementing the linear regression, we have to take care of certain assumptions made by linear regression.<br><br>

It is important to understand these assumptions to improve the regression model’s performance. 

So In this article, we are going to discuss these assumptions in-depth and ways to fix them if violated. 

After gaining proper knowledge of linear regression assumptions, you can bring excessive improvement in regression models. <br><br>




It is important to check this assumption because if you fit a linear model to a non-linear one, the regression algorithm would fail to capture the trend. 

Hence, it will result in an inefficient model. Also, this will lead to erroneous predictions on the unseen data sets.

Now comes the question

What to do if the features and target relationship is not linear?
Lets learn this.

What to do if linear relationship assumption isn’t met
Let us discuss the options you can go with. 

You can apply nonlinear transformations to the independent and dependent variables.
You can add another feature to the model.
For example, if the plot of x’ vs. y’ has a parabolic shape, then it might be possible to add x2 as an additional feature in the model.<br><br>

<b> Normal Distribution of Residuals </b><br><br>

The second assumption of linear regression is all the residuals or error terms should be normally distributed. If residuals are non-normally distributed, the estimation may become too wide or narrow. 

If there is non-normal distribution in residuals. You can conclude that there are some unusual data points that we have to observe closely to make a good model. 

Here, the black line is showing the normal (standard) distribution, and the blue line is showing the current distribution. 

We can see that there is a slight shift in the normal and current distribution. We can use the non-linear transformation of the given features if the residuals are not normally distributed.

Q-Q Plot
Which stands for “quantile-quantile” plot, can also be used to check if the residuals of a model follow a normal distribution or not. 

If the residuals are normally distributed, then the plot will show a straight line. However, the deviation in the straight line shows the absence of normality. 

Normality can be checked by doing statistical tests, too, like - the Kolmogorov-Smirnov test, Jarque-Barre, or D’Agostino-Pearson. <br><br>


<b> Multicollinearity </b><br><br>

The next assumption of linear regression is that there should be less or no multicollinearity in the given dataset. 

This situation occurs when the features or independent variables of a given dataset are highly correlated to each other. 

In a model having correlated variables, it becomes difficult to determine which variable is contributing to predict the target variable. Another thing is, the standard errors tend to increase due to the presence of correlated variables. 

Also, when independent variables are highly correlated, the predicted regression coefficient of a correlated variable depends on other variables that are available in the model. 

If you drop one correlated variable from the model, its predicted regression coefficients will change.  It can lead to wrong conclusions and poor performance of our model. 
 <br><br>




The accuracy of the generalized model’s prediction on the unseen data should be very close to its accuracy on the training data.

The efficient way to build a generalized model is by capturing a variety of possible combinations of the values of predictor variables and their corresponding targets. <br><br>',
 'Saumya Awasthi', '2020-10-06 10:51:13');


