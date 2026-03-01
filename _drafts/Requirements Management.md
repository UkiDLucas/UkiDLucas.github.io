#byUkiDLucas #public #requirements

```toc
```

Subject: 

Understanding Requirements Management in Automotive

# Introduction

Requirements management is fundamental to the **automotive industry**, it is the backbone of automotive design, development, and validation. 

It's a **rigorous** process beginning with meticulously defined, **atomic** stakeholder requirements, which are transformed into the **system** and subsequently **software** requirements. 

Crucially, Original Equipment Manufacturers (**OEM**s) **mandate** a comprehensive, **bi-directional pipeline** of requirement **traceability** as a **precondition** to consider a supplier's entry into the automotive market. This traceability, illustrating the journey from **requirements**,  **design** through **development** to **validation**, cannot be retrospectively fabricated, underscoring how paramount are of well-structured, atomic requirements at the very outset. A company's credibility, market-entry, and success hinge on its mastery of thorough, compliant, and efficient requirements management.

# Standards

Ensuring compliance with **standards** like **ISO 26262** and **ASPICE** is indispensable in managing functional safety risks and enhancing the software development process. 

The ISO 26262 and Automotive SPICE (ASPICE) standards are crucial to ensure the process is thorough and effective. 

ISO 26262, a standard for automotive functional safety, mitigates risks associated with potential malfunctions of electronic and electrical systems in vehicles. 

ASPICE, on the other hand, provides a framework for hardware/software process assessment, improving quality and ensuring the development process is controlled and effective.





# The Process of Requirements Engineering

## Customer Requirements (CRS)

Customer requirements (CRS) are the starting point, encompassing desires and expectations from the vehicle's performance, safety, comfort, fuel efficiency, and more. 

## Stakeholders' requirements

In addition to customer requirements, stakeholder requirements play a significant part in automotive requirements management. 

Stakeholder requirements entail expectations from the **product development** team, **competitive market research**, **product management**, and those that establish **baseline product** requirements. 

In the process of RFI, RFQ, and contract award the Customer Requirements are compared and analyzed against the baseline product to establish the gap, feasibility, and cost when responding to the client. It is common that the team spends a day or two every week for the lifetime of the project (i.e. 4 years) negotiating the requirements.

The team conducts comprehensive market analyses to comprehend competitor strategies, market trends, and consumer preferences. These findings influence requirement generation by ensuring that the product can competitively position itself in the market.

Product management is responsible for the overall product strategy and defines key features and functionalities based on market research, technical feasibility, cost-effectiveness, and profitability. Their requirements align the product's development with the business strategy.

Baseline product requirements refer to the essential specifications that a product must fulfill to be deemed viable. These standards are typically set in the context of existing products, industry norms, legal requirements, and safety standards. They form the benchmark against which customer requirements are compared, ensuring that the customer's desires are feasible and align with the product's fundamental capabilities.

### Intelligent combining of CRS and Internal Stakeholder requirements

By integrating stakeholder requirements with customer requirements, an automotive company can effectively balance market competitiveness, strategic alignment, baseline product integrity, and customer satisfaction. This fusion of requirements is vital to design, developing, and validating a product that meets market needs and maintains requirement traceability, a critical prerequisite for gaining OEM consideration and securing market entry.

## System Level Requirements (SLR)

Once these requirements are gathered, they are analyzed and distilled into **system** requirements which detail the technical specifications necessary for the vehicle, or the subsystem (i.e. LiDAR), to meet customer needs.

## Detailed Component Requirements 

Subsequently, these system requirements are further broken down into component-level (mechanical, optical, electrical engineering, thermal, etc.) and software requirements. These dictate how the vehicle's embedded systems and software function, contributing significantly to the vehicle's performance, safety, and other features.

# Tools 

Tools like **Polarion**, DNG, and Windchill facilitate efficient and traceable management of these requirements throughout the product development lifecycle.

Several tools are commonly used to manage this process:

1.  Polarion: A state-of-the-art tool that is by far the easiest to use for managing and well as consuming (reading) the requirements.
    
2.  IBM's Doors Next Generation (DNG): Commonly used in the industry, but generally painful and disliked.
    
3.  PTC Windchill: this least common, Windows-based tool looks and works like database software written in the early 1990s. It would seriously restrict most of our engineers (using Linux) from daily usage. All other tools use modern Web interfaces.




![[Requirements Engineer 1]]





# The Change Control Board (CCB)


The automotive industry is marked by rapid technological advancements, evolving customer expectations, and changing regulatory landscapes (sometimes yearly), which often lead to dynamic requirement changes. Managing these changes effectively is vital to maintain product development consistency and relevance.

The Change Control Board (CCB) plays a central role in this scenario. It's a cross-functional team responsible for reviewing and approving or rejecting proposed changes to system and software requirements. This ensures that all changes align with the overall project scope and strategy and that their impacts on time, cost, and resources are assessed and managed.

In the context of changing requirements, the role of the requirements engineer is paramount. They are tasked with analyzing and understanding the implications of proposed changes, assessing their feasibility and potential impact on existing requirements.

Once a change is approved by the CCB, requirement engineers must update the requirement specifications accordingly and maintain their traceability. They also communicate these changes to all stakeholders, ensuring everyone is aligned with the updated requirements.

Furthermore, requirement engineers manage the priority of these changes, aligning them with the strategic goals of the project. This includes maintaining a pipeline of new changes and determining their order of implementation based on their importance, urgency, and potential impact on the product.

Therefore, the collaboration between the CCB and requirement engineers is essential in managing changing requirements. Together, they ensure changes are controlled and implemented in a structured manner, maintaining the integrity of the product while adapting to market needs and strategic shifts.

# Legal Compliance across geographic markets

In the global automotive industry, compliance with regional legal regulations is not a choice but a necessity. These regulations govern various facets of vehicle manufacturing and operation, including safety standards, emissions control, fuel efficiency, and data privacy.

In the United States, the National Highway Traffic Safety Administration (NHTSA) sets safety standards for vehicles, while the Environmental Protection Agency (EPA) regulates emissions. The Federal Trade Commission (FTC) oversees warranties and consumer protections. The California Air Resources Board (CARB) also imposes its own set of emissions standards that several other states choose to follow.

European regulations are largely defined by the European Union. The European Automobile Manufacturers Association (ACEA) and the European New Car Assessment Programme (Euro NCAP) set stringent safety and emission standards. The EU also enforces the General Data Protection Regulation (GDPR) for data privacy, impacting connected vehicle services.

China, being the world's largest automotive market, also has its own stringent regulations. The China Automotive Technology and Research Center (CATARC) assists in drafting vehicle standards and regulations. China has rigorous fuel economy standards and aims to boost the use of new energy vehicles (NEVs) with regulations like the "Dual Credit" system.

Requirements management in the automotive industry must include these regional regulations in their stakeholder requirements. Compliance is not only essential to legal operation in these markets but also forms a part of the product's baseline requirements against which customer requirements are evaluated. The requirements engineers must ensure that all regional regulations are taken into account, and any changes to these laws are promptly integrated into the product's requirements.

# Privacy and customer protection laws

As automotive technology advances, especially in the realm of connected and autonomous vehicles, the issue of data privacy and customer protection has come into sharp focus. Ensuring compliance with privacy and customer protection laws across different markets is an integral part of the requirements management process.

In the United States, data privacy is largely governed by the Federal Trade Commission (FTC), which has the authority to enforce privacy promises made by companies to consumers. Additionally, certain states have enacted their own privacy laws, such as the California Consumer Privacy Act (CCPA), which grants Californian consumers rights over their personal information.

In Europe, the General Data Protection Regulation (GDPR) is the primary law regulating how companies protect EU citizens' personal data. This regulation has a wide reach, impacting not only EU-based companies but also any organization dealing with EU citizens' data. The GDPR imposes strict rules on controlling and processing personally identifiable information (PII).

China's Personal Information Protection Law (PIPL), enacted in 2021, represents the country's first comprehensive data privacy law. This legislation adopts principles similar to the GDPR, such as data minimization, limitation on data processing, and consent requirements.

All these privacy laws significantly impact the automotive industry, particularly with the proliferation of connected vehicles that collect, process, and transmit large volumes of data. It is essential for requirements engineers to incorporate these regulations into the requirement specifications, and any breaches could lead to substantial legal and financial consequences.

Further, it is not just about compliance. Companies also need to earn their customers' trust by demonstrating respect for privacy and a commitment to protecting personal data, which could translate into a competitive advantage in today's data-conscious society.


# Summary

Successful requirements management is a strategic balance of understanding customer needs, breaking them down into manageable pieces, and adhering to rigorous industry standards for product safety and quality. Effective utilization of tools like Polarion, DNG, and Windchill further facilitates this balance, enabling efficient, compliant, and successful automotive product development.

# Personal Note from Uki


I have had the privilege of being deeply involved in the automotive industry, working with two OEM companies, CNH/Fiat and Canoo, and a leading Tier 1 supplier, Harman/Samsung. 

My experience spans across multiple dimensions of automotive requirements management, giving me a comprehensive understanding of the intricacies and challenges of this field.

In a single, 4-year project, I've managed a portfolio of 30,000 requirements, which included frequent trips to FCA and negotiating the requirements with their architects as well as upper management. This has provided me with a deep appreciation of the significance of effective requirements management in developing successful, market-ready automotive products.

In addition to my tenure as a System Architect, and a Functional Owner (20+ software applications and passenger display subsystem), I have overseen multiple ADAS subsystems, (including Innoviz LiDAR) and their requirements as a Senior Manager.

Perhaps as the most significant experience, I have witnessed a $4 billion FCA project from its inception, starting before the RFQ stage, through to successful delivery. 

In light of my experience, I am confident in my ability to contribute significantly to the requirements management process.



