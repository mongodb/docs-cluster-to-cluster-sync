
Disables the :ref:`Embedded Verifier <c2c-embedded-verifier>`.
When disabled, ``mongosync`` does not verify the migration. For
alternative verification methods, see :ref:`c2c-verification`.

This option is intended as a workaround for customers that
experience an OOM kill when running ``mongosync`` with
verification and cannot allocate more resources or tolerate
restarting verification. It allows the migration to complete
with verification disabled. Verification remains disabled
for subsequent restarts or reversals.

This should not be used when ``mongosync`` is initially started.
Instead, disable verification via the :ref:`/start
<c2c-api-start>` request parameter ``verification.enabled:
false`` since verification is enabled by default.

