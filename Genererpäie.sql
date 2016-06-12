CREATE FUNCTION
  GenererPaie
  /* Routine name */
  ()                            /* An empty parameter list */
  RETURNS DECIMAL(3,2)          /* What the function returns */
  CONTAINS SQL                 /* Data access clause */
  RETURN 3.14;