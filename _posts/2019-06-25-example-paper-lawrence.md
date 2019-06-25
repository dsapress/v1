---
title: "Proceedings of Data Science Africa: A New Journal for the African Context"
abstract: Over two hundred years ago scientists began sharing their ideas through printed volumes, or journals. This enabled, for example, astronomers from different countries to find out about the discovery of new planets and to create the mathematics necessary for determining their orbit. Since then journals have also taken on other roles such as journal names acting as a proxy for research quality. While we recognize the need for measures of research quality, they are secondary to our aim. The Proceedings of Data Science Africa focuses on sharing best practice and innovation in Machine Learning, Artificial Intelligence and Data Science in the African context focused on the needs of African scientists and engineers. In this paper, we introduce the journal and its philosophy as well as providing practical advice on how to submit.
pdf: http://proceedings.dsa.press/v1/lawrence19a/lawrence19a.pdf
layout: article
series: Proceedings of Data Science Africa
id: lawrence19a
month: 0
tex_title: "Data Science Africa: Example Paper"
firstpage: 1
lastpage: 2
page: 1-2
order: 1
author:
- given: Neil D.
  family: Lawrence
  institute: University of Sheffield and Amazon
- given: John A.
  family: Quinn
  institute: Makerere University and Google AI
- given: Ciira wa
  family: Maina
  institute: Dedan Kimathi University of Technology
- given: Martin
  family: Mubangizi
  institute: UN Global Pulse
- given: Ernest
  family: Mwebaze
  institute: Makerere University and Google AI
- given: Dina
  family: Machuve
  institute: African Institute for Science and Technology
- given: Billy
  family: Okal
  institute: Voyage
# Format based on citeproc: http://blog.martinfenner.org/2013/07/30/citeproc-yaml-for-bibliographies/
---

# Introduction

Welcome to the Proceedings of Data Science Africa. This is a new
journal targeted at sharing ideas and innovation in *data science*,
*machine learning* and *artificial intelligence* with a focus on the
African context.

Our aim is to showcase the most useful African research in these areas
to improve communication of ideas and sharing of best practice.

Our publications contain stories, each of our works needs to describe
a problem, what was done to address the problem and what the
conclusions were. But we accept that a single publication may not
contain the whole story, indeed, that is why we are a community. We
therefore encourage clear submission of negative results. Our
shepherds will work with the authors to clarify what was tried,
perhaps in the idea case we may even be able to help turn the result
around.


## What Can I publish in Proceedings of DSA?

The idea of PDSA is not to be too prescriptive of what is published,
PDSA will be a resource for sharing of innovation, experience and
ideas. In the first instance we envisage four different types of
paper. We summarize them briefly below, highlighting what we expect
the community to learn from the sharing of experience.

1. *A note*: notes express opinions or comment. A letter might comment
   on recent papers, and how they can be usefully deployed in Africa,
   or it might provide comment on a ideas for student
   projects. Letters have a short turn-around and are typically less
   than 800 words in length.
2. *A deployment experience*: lessons learned from deploying data
   science applications in the field. Very often, the true story of a
   deployment is lost in an effort to polish a paper. We believe these
   lessons are valuable and should be shared. Only by understanding
   our errors and sharing them, can we learn to improve our
   deployments. Deployment experiences discuss more detail, and will
   typically be XXX words in length.
3. *A data set*: sharing of location, and the use of a data set. At
   PDSA we recognize that most of the work in a successful data
   science project is put into acquiring and cleaning data. The focus
   of a data set publication is documenting this work and advertising
   the availability of the data. We don't host the data on our
   servers, but you can host it on data science platforms such as
   Zindi, Kaggle or OpenML. What we do host is the story of the data,
   how it was acquired and how it has been processed. Typically such a
   story ends with a simple analysis.
4. *An innovation*: this type of paper is like the more classical
   publication, where there is some innovation in process, or
   technical innovation, that is the main focus of the publication.

## Cost

There is no cost to publishing in PDSA other than your time, and that
of the shepherds and the editors.

## How Does it Work?

As a new journal, we also want to bring a new approach to the
reviewing and presentation of manuscripts. Our view is that scientific
publication is for furthering knowledge, not for assessing the quality
of a particular individual or institution's research through
proxy-metrics.


1. Light touch: the publishing process should only include work for
   improving the quality of the paper.
2. Rejection is a Failure: we do not accept all papers, but we view a
   paper rejection as a failure. Each rejection is reviewed to
   understand what went wrong.
3. Curators and Facilitators: our reputation is founded on the utility
   of material we present that means our editors and shepherds act as
   curators and facilitators. We do not place barriers in authors'
   paths, but we help nudge them in the direction where there message
   will be better understood.
4. No longer than necessary:

# Laying Out Your Paper

To make it easier to review the paper using code review techniques,
and to ensure we can create a number of formats from your paper, we
now review how to include code, references, figures, math etc in your
submission.

## Code

We encourage submission of code both within and alongside the
paper. For code within the paper ...

In particular, we encourage placement of code nearby the mathematics
or algorithm it corresponds to. This encourages understanding of both
the mathematics and the code. For example if we were describing mean
squared error we might write as follows:

The mean squared error can be computed by summing across the data
$$
E(\mathbf{w}) = \frac{1}{n}\sum_{i=1}^n (y_i - f(\mathbf{x}_i))^2
$$
Where our implementation made use of python.

```{python}
diff = y-f
diff2 = diff*diff
E = np.sum(diff2)/len(diff)
```

This helps the reader understand how the mathematics is mapping
towards the code.

Code should only be included in the main text of the paper if it is
part of the narrative story of the work. Other code may be included in
software libraries which can be investigated at leisure by the reader.

## Figures

We support figures created in two different formats: SVG and PNG. You
can include your figure as follows.

```
![This is my figure caption.](./figure.svg)
```


## References

We use `pandoc-citeproc` for handling your citations. That means you
need to provide your citations in a `yaml` file, alongside your
submission. Each citation is then referenced as `@keyname` where
`keyname` is the `id` in the `yaml` file.

# Conclusions

Proceedings of Data Science Africa is a new approach to publication
focussed on sharing the innovations necessary to drive forward
Artificial Intelligence, Machine Learning and Data Science on the
African continent.
