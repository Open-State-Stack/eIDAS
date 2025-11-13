# DOC-REVOKE-S01: Revocation Hotline Script & Procedure

| | |
|---|---|
| **Document ID** | `DOC-REVOKE-S01` |
| **Version** | `1.0` |
| **Status** | `Final` |
| **Owner** | Head of Operations / CISO |
| **Approval Date** | `[CURRENT_DATE]` |
| **Next Review Date** | `[CURRENT_DATE + 6 Months]` |

---

## 1. GUIDING PRINCIPLES FOR THE OPERATOR

*   **Your Mission:** Your primary mission is to securely validate a revocation request and act on it. Protecting the integrity of the system is paramount.
*   **Stay Calm:** Callers may be under extreme stress. Maintain a calm, professional, and reassuring tone.
*   **Stick to the Script:** This script is designed to protect the user, the company, and you. Do not deviate.
*   **Never Volunteer Information:** Do not provide or confirm any information about the subscriber until they have passed verification.
*   **Assume Nothing:** Treat every call as a potential security risk until identity is confirmed.

---

## 2. PART 1: OPENING & INFORMATION GATHERING

**Operator:** "Thank you for calling the [Company Name] Certificate Revocation Hotline. My name is [Your Name]. This call is being recorded for security and quality purposes. How can I help you today?"

*(Caller states they need to revoke a certificate.)*

**Operator:** "I can certainly help you with that. To begin the process, could you please provide me with your full name and the serial number of the certificate you wish to revoke?"

*   **[ ] Caller's Full Name:** _________________________
*   **[ ] Certificate Serial Number:** _________________________

*(Operator uses this information to locate the subscriber's record in the system.)*

**Operator:** "Thank you. I have located your record. For your security, I now need to ask you three verification questions. Please have your answers ready."

---

## 3. PART 2: IDENTITY VERIFICATION

*(The system will display the subscriber's pre-chosen security questions and answers.)*

**Operator:** "Are you ready to proceed?"

*(Ask each question clearly and exactly as it appears on the screen. Record the caller's response verbatim.)*

*   **[ ] Question 1:** [Read Question 1]
    *   **Caller's Answer:** _________________________
*   **[ ] Question 2:** [Read Question 2]
    *   **Caller's Answer:** _________________________
*   **[ ] Question 3:** [Read Question 3]
    *   **Caller's Answer:** _________________________

---

## 4. PART 3: DECISION & ACTION

### PATH A: SUCCESSFUL VERIFICATION

*(All 3 answers match the record EXACTLY.)*

**Operator:** "Thank you. Your identity has been successfully verified."

**Operator:** "**I must now inform you that the next step is final and irreversible.** Once revoked, this certificate can never be used again. Do you understand and wish to proceed with the permanent revocation?"

*(Wait for a clear "Yes" or "I understand".)*

**Operator:** "Thank you for confirming. I am now revoking the certificate. Please stay on the line."

*   **[ ] ACTION:** Execute the revocation in the CA system.
*   **[ ] ACTION:** Select the appropriate reason code (e.g., `keyCompromise`).
*   **[ ] ACTION:** Confirm the revocation is processed.

**Operator:** "The revocation is complete. The ticket number for this action is `[Read Ticket ID from System]`. You will receive an email confirmation shortly. The revocation will be reflected globally in our status services within the next 15 minutes. Is there anything else I can help you with?"

*(End call.)*

---

### PATH B: FAILED VERIFICATION (NORMAL SCENARIO)

*(One or more answers DO NOT match the record.)*

**Operator:** "Thank you for providing those answers. Unfortunately, for security reasons, I was unable to verify your identity based on the information provided."

**Operator:** "**IMPORTANT: Do NOT state which answers were incorrect.** For your protection, I cannot proceed with a revocation over the phone. You can still revoke your certificate immediately by using one of our secure alternative methods:"
*   "**Web Portal:** You can log into our secure web portal at `[WEBSITE_URL]/revoke` using your username, password, and two-factor authentication."
*   "**In-Person:** You can visit one of our authorized registration offices during business hours with a valid government-issued ID."

**Operator:** "I have logged this failed attempt under the ticket number `[Read Ticket ID from System]`. Is there anything else I can assist you with?"

*(End call.)*

---

### PATH C: FAILED VERIFICATION WITH EMERGENCY CLAIM (ESCALATION)

*(Verification fails, but the caller insists their key is compromised and the situation is urgent.)*

**Caller:** "What do you mean you can't verify me? My laptop was just stolen! They have my private key! You have to revoke it now!"

**Operator:** "Sir/Ma'am, I understand your concern and the urgency of the situation. Because the standard verification was not successful, I am not authorized to perform a permanent revocation. However, I will take an immediate step to protect you."

**Operator:** "For your immediate protection, I am placing a temporary **security hold** on your certificate. This will cause it to appear as 'revoked' to anyone checking its status. I am also immediately escalating this case to our on-call Incident Manager who has the authority to investigate this further."

*   **[ ] ACTION:** Change the certificate status to `certificateHold` in the CA system.
*   **[ ] ACTION:** Follow the procedure to contact the **On-Call Incident Manager** (e.g., via PagerDuty, dedicated emergency line). Provide them with the ticket number.

**Operator:** "The security hold is now in place. I have escalated this to our on-call Incident Manager, who will be in contact with you shortly using the contact information we have on file. The ticket number for this case is `[Read Ticket ID from System]`. Please keep it for your records. The Incident Manager will guide you on the next steps."

*(End call.)*

---

## 5. APPENDIX: SOCIAL ENGINEERING RED FLAGS

*   **Excessive Urgency:** The caller tries to rush you and force you to skip steps.
*   **Intimidation:** The caller uses anger, threats, or claims of authority (e.g., "My boss is the CEO, you'll be fired if you don't do this!").
*   **Flattery or Bribery:** The caller is overly friendly or offers rewards.
*   **Ignoring Failed Verification:** The caller dismisses the failed questions as unimportant or trivial.
*   **Information Fishing:** The caller asks you to provide them with information (e.g., "Can you just tell me what the postcode on file is? I've forgotten.").

**If you suspect social engineering, follow PATH B or C. NEVER deviate from the verification procedure.**