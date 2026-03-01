---
layout: single
title: "Thinking About Entering the Automotive Industry"
date: 2023-05-20
author: Uki D. Lucas
permalink: "/posts/entering-automotive-industry/"
excerpt: "A practical guide to requirements management, standards, and process expectations in automotive programs."
tags:
  - automotive
  - requirements
  - engineering
---

### **Who is this article for?**

This article is written for **companies** and **individuals** trying to **enter** the automotive business.

### Motivation

The topic of Requirements Management may not be a hot one. Trust me, I understand. However, there is a very good reason why I decided to spend considerable time writing about it.

A bit of personal background. For most of my very long career, I have been a computer science architect and **consultant**. That means I worked with many organizations, from very large ones to the countless startups **mentoring** them and providing software solutions.

Today, I am in a position where I receive hundreds of inquiries from other companies, recruiters, and **interview individuals** trying to work within this industry, but **struggling to understand automotive** needs.

I am always trying to write a book, but I never have time to finish it and since retirement is a long way ahead, I decided to whip out a series of short articles.

I hope this article will help the candidates to understand the “**best practices**” and the “**lingo**” spoken in the automotive industry.

### Introduction

Requirements management is **fundamental** to the automotive industry, it is the backbone of automotive **design**, **development**, and **validation**.

It’s a **rigorous process** beginning with meticulously defined, **atomic** **stakeholder** requirements, which are transformed into the **system** and subsequently **software** requirements.

Crucially, the car makers, called Original Equipment Manufacturers (**OEM**s) **mandate** a comprehensive, **bi-directional pipeline** of requirement **traceability** as a **precondition** to consider a supplier’s (that is you) entry into the automotive market.

This **traceability**, illustrating the journey from **requirements**, via **design** via **development** to **validation**, cannot be **retrospectively fabricated**, underscoring how paramount are **well-structured**, **atomic** **requirements** at the very outset. A company’s **credibility**, **market entry**, and **success** hinge on its mastery of thorough, compliant, and efficient requirements management.

### The Standards

Ensuring compliance with standards like **ISO 26262** and **ASPICE** is **indispensable** in managing **functional safety** (FUSA) risks and enhancing the software development process.

**ISO 26262**, a standard for automotive functional safety, mitigates **risks** associated with **potential malfunctions** of **electronic** and electrical systems in vehicles.

**ASPICE**, on the other hand, provides a **framework** for hardware/software **process** assessment, improving **quality** and ensuring the development process is **controlled** and **effective**.

### The Process of Requirements Engineering

#### Customer Requirements (CRS)

Customer requirements (CRS) are the **starting point**, encompassing desires and expectations from the vehicle’s performance, safety, comfort, fuel efficiency, and more.

#### Stakeholders’ requirements

In addition to customer requirements, stakeholder requirements play a significant part in automotive requirements management.

Stakeholder requirements entail expectations from the **business development** team, **competitive market research**, **product management**, and **system architects** establishing the **baseline product** requirements.

In the process of Request for Information (**RFI)**, Request for Quote (**RFQ)**, and contract **award** the **Customer** **Requirements** are compared and analyzed **against** the **baseline** **product** to establish the **gap**, **feasibility**, and **cost** when responding to the client. It is common that the team spends a **day** or two **every week** for the **lifetime** of the project (i.e. 4 years) **negotiating** the requirements.

The team conducts **comprehensive market analyses** to comprehend **competitor strategies**, **market trends**, and **consumer preferences**. These findings influence requirement generation by ensuring that the product can **competitively** **position** itself in the **market**.

**Product management** is responsible for the overall **product strategy** and defines **key features** and **functionalities** based on **market research**, **technical feasibility**, **cost-effectiveness**, and **profitability**. Their requirements align the product’s development with the **business strategy**.

**Baseline product requirements** refer to the **essential specifications** that a product must fulfill to **be deemed viable**. These standards are typically set in the context of existing products, **industry norms**, **legal requirements**, and **safety standards**. They form the **benchmark** against which customer requirements are compared, ensuring that the **customer’s desires** are **feasible** and **align** with the product’s **fundamental capabilities**.

#### Intelligent combining of CRS and Internal Stakeholder requirements

By **integrating** **stakeholders’** requirements with **customer** requirements, an automotive company can effectively balance **market competitiveness**, **strategic alignment**, baseline **product integrity**, and **customer satisfaction**. This **fusion** of requirements is vital to **design**, **developing**, and **validating** a product that **meets** **market needs** and maintains requirement **traceability**, a **critical** prerequisite for **gaining OEM consideration** and securing market entry.

### System Requirement Specification (SRS)

Once these requirements are gathered, they are **analyzed** and **distilled** into system requirements which detail the **technical specifications** necessary for the **vehicle**, or the **subsystem** (i.e. cameras, LiDAR, ADAS), to meet customer needs.

### Technical Requirements Specification (TRS)

Subsequently, these **system** requirements are **further broken down into** **component**-level (mechanical, optical, electrical engineering, thermal, etc.) and **software** requirements. These dictate how the vehicle’s embedded sub-systems and software function, contributing significantly to the vehicle’s **performance**, **safety**, **Key Performance Indicators (KPI),** and other features.

**Requirements Tools**

Tools like **Polarion**, DNG, and Windchill facilitate **efficient** and **traceable** **management** of these requirements throughout the product development **lifecycle**.

Several tools are commonly used to manage this process:

1\. **Polarion**: A **state-of-the-art** tool that is by far the easiest to use for managing and well as consuming (reading) the requirements.  
  
2. IBM’s Doors Next Generation (DNG): is commonly used in the industry  
  
3. PTC Windchill: is another option

### **The Change Control Board (CCB)**

The automotive industry is marked by **rapid technological advancements**, **evolving customer expectations**, and **changing regulatory landscapes** (sometimes **yearly**), which often lead to **dynamic requirement changes**. Managing these changes effectively is vital to maintain product development **consistency** and **relevance**.

The Change Control Board (CCB) plays a central role in this scenario. It’s a **cross-functional team** responsible for **reviewing** and **approving** or rejecting proposed changes to system and software requirements. This ensures that all changes align with the overall **project scope** and **strategy** and that their **impacts on time, cost, and resources** are assessed and managed.

In the context of changing requirements, the role of the requirements engineer is paramount. They are tasked with analyzing and understanding the implications of proposed changes, assessing their **feasibility** and potential **impact** on existing requirements.

Once a change is approved by the CCB, requirement engineers must update the requirement specifications accordingly and **maintain** their **traceability**. They also **communicate** these changes to all **stakeholders**, ensuring **everyone is aligned** with the updated requirements.

Furthermore, requirement engineers manage the **priority** of these changes, aligning them with the **strategic goals** of the project. This includes maintaining a **pipeline of new changes** and determining their **order of implementation** based on their **importance**, **urgency**, and potential **impact** on the product.

Therefore, the collaboration between the CCB and requirement engineers is essential in managing changing requirements. Together, they ensure **changes** are **controlled** and **implemented** in a **structured** manner, maintaining the **integrity** of the product while **adapting to market** needs and **strategic shifts**.

### Legal Compliance across geographic markets

In the **global automotive industry**, compliance with **regional** legal **regulations** is **not a choice** but a necessity. These regulations govern various facets of vehicle manufacturing and operation, including **safety** **standards**, emissions control, fuel efficiency, and **data privacy**.

In the United States, the National Highway Traffic Safety Administration (**NHTSA**) sets **safety standards** for vehicles, while the Environmental Protection Agency (**EPA**) regulates emissions. The Federal Trade Commission (**FTC**) oversees **warranties** and **consumer protections**. The California Air Resources Board (**CARB**) also imposes its own set of emissions standards that several other states choose to follow.

European regulations are largely defined by the European Union. The European Automobile Manufacturers Association (**ACEA**) and the European New Car Assessment Programme (**Euro NCAP**) set stringent **safety** and emission standards. The EU also enforces the General Data Protection Regulation (**GDPR**) for **data privacy**, impacting **connected vehicle services**.

China, being the world’s **largest** automotive market, also has its own stringent regulations. The China Automotive Technology and Research Center (**CATARC**) assists in drafting vehicle standards and regulations. China has rigorous fuel economy standards and aims to boost the use of new energy vehicles (**NEVs**) with regulations like the “Dual Credit” system.

Requirements management in the automotive industry **must** include these regional regulations in their stakeholder requirements. Compliance is not only essential to **legal operation in these markets** but also forms a part of the product’s baseline requirements against which customer requirements are evaluated. The requirements engineers must ensure that all regional regulations are taken into account and that **any changes to these laws** are **promptly integrated** into the product’s requirements.

#### Privacy and customer protection laws

As automotive technology advances, especially in the realm of connected and autonomous vehicles, the issue of **data privacy** and **customer protection** has come into **sharp focus**. Ensuring compliance with privacy and customer protection laws across different markets is an integral part of the requirements management process.

In the United States, data privacy is largely governed by the Federal Trade Commission (**FTC**), which has the authority to enforce privacy promises made by companies to consumers. Additionally, certain states have enacted their own privacy laws, such as the California Consumer Privacy Act (**CCPA**), which grants Californian consumers rights over their **personal information**.

In Europe, the General Data Protection Regulation (**GDPR**) is the primary law regulating how companies protect EU citizens’ **personal data**. This regulation has a wide reach, impacting not only EU-based companies but also any organization dealing with EU citizens’ data. The GDPR imposes strict rules on controlling and processing **personally identifiable information (PII)**.

China’s Personal Information Protection Law (**PIPL**), enacted in **2021**, represents the country’s first comprehensive data privacy law. This legislation adopts principles similar to the GDPR, such as data minimization, **limitation on data processing**, and **consent requirements**.

All these privacy laws significantly impact the automotive industry, particularly with the proliferation of **connected vehicles** that **collect**, **process**, and **transmit large volumes of data**. It is essential for requirements engineers to incorporate these regulations into the requirement specifications, and any **breaches could lead to substantial legal and financial consequences**.

Further, it is not just about compliance. Companies also need to earn their customers’ **trust** by demonstrating **respect for privacy** and a commitment to **protecting personal data**, which could translate into a **competitive advantage** in today’s data-conscious society.

### Summary

Successful requirements management is a **strategic balance** of **understanding customer needs**, breaking them down into manageable pieces, and adhering to **rigorous industry standards** for product **safety** and **quality**. Effective utilization of tools like **Polarion**, DNG, and Windchill further facilitates this balance, enabling efficient, compliant, and successful automotive product development.

Please share.

I am looking forward to your comments.

Respectfully,

Uki D. Lucas  
<https://www.linkedin.com/in/ukidlucas/>



