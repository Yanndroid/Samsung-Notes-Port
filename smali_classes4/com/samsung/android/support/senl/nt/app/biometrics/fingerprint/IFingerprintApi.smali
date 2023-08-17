.class interface abstract Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V
.end method

.method public abstract cancelAuthenticate()V
.end method

.method public abstract getFingerprintId(Landroid/content/Context;)Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasChangedFingerprint(Landroid/content/Context;)Z
.end method
