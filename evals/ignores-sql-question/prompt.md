---
max_turns: 4
allowed_tools: [Skill]
---

why does this postgres query return duplicate rows?

SELECT o.id, c.name FROM orders o JOIN contacts c ON c.account_id = o.account_id WHERE o.created_at > now() - interval '7 days';
