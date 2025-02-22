# 🏏 Day 5



---

## 📂 Project Tasks

### ✅ Task 1: Commentary Word Cloud
- **Objective:** Generate a word cloud highlighting the most frequently used words in cricket commentary.
- **Implementation:**
  - Clean the commentary data by removing **stopwords** (e.g., "the", "a", "is").
  - Generate a **word cloud** where the most frequent words appear larger.
  - Use **Python's WordCloud library** for visualization.
- **Expected Output:** A **Word Cloud Figure** without stopwords.

- **Reference:** IPL Cricket Commentary - Cricbuzz

---

### ✅ Task 2: Commentary to Table
- **Objective:** Extract key details from cricket commentary using **Regular Expressions (RegEx)**.
- **Implementation:**
  - Extract key columns from each row of commentary:
    - **Bowler Name**
    - **Batter Name**
    - **Ball Type** (e.g., yorker, full toss)
    - **Shot Type** (e.g., boundary, single)
    - **Speed of Ball**
    - **Runs Scored**
  - Use **RegEx** patterns to extract structured data.
  - Visualize trends using **a Line Chart**.
- **Expected Output:** A **Line Chart** showing trends in commentary analysis.


---

### ✅ Task 3: Text Pre-processing Methods Using Scikit-Learn
- **Objective:** Convert cricket commentary text into numerical vectors using **CountVectorizer** and **TF-IDF Vectorizer**.
- **Implementation:**
  - Use **CountVectorizer()** to convert words into frequency counts.
  - Use **TfidfVectorizer()** to compute term importance.
  - Understand how text transforms into numerical features for **machine learning models**.
- **Expected Output:** A vectorized dataset ready for training LLM models.

- **Reference:** NLP 📝 GloVe, BERT, TF-IDF, LSTM... 📝 Explained - Section 5

---

### ✅ Task 4: Implement TF-IDF from Scratch on the Commentary Dataset
- **Objective:** Implement **TF-IDF** manually using mathematical formulas without relying on **Scikit-Learn**.
- **Implementation:**
  - Compute **Term Frequency (TF)** and **Inverse Document Frequency (IDF)** manually.
  - Verify the results using **Scikit-Learn’s TfidfVectorizer**.
  - Understand the logic behind TF-IDF, a fundamental technique in NLP.
- **Expected Output:** A manually computed **TF-IDF matrix** that matches Scikit-Learn’s implementation.

- **Reference:** [TF-IDF from scratch in Python](https://medium.com/) by William Scott

---

## 🛠 Tools & Technologies
- **Python** (Pandas, NumPy, Scikit-learn, WordCloud, Matplotlib, Seaborn)
- **Regular Expressions (RegEx)** for text extraction
- **Machine Learning Techniques** for text vectorization

## 🚀 How to Run This Project
1. Clone this repository:
   ```bash
   git clone https://github.com/LogeshwariMD/Data-Analysis-Bootcamp-/new/main/Day5
   ```
2. Navigate to the project folder:
   ```bash
   cd cricket-commentary-nlp
   ```
3. Install required dependencies:
   ```bash
   pip install pandas numpy matplotlib seaborn wordcloud scikit-learn
   ```
4. Run Jupyter Notebook or Python scripts to analyze the dataset and generate insights.

## 📈 Conclusion
This project demonstrates **how to extract, process, and analyze text data** from cricket commentary. By applying **NLP techniques**, we gain deeper insights into match events, player performances, and commentary trends. 🚀

🔎 **Transforming raw text into structured data for powerful insights!** 🏏

