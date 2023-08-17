.class final Lcom/samsung/android/sdk/pass/d;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pass/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/c;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 1

    const-string p1, "SpassFingerprintSDK"

    const-string/jumbo v0, "updateActiveUser : onAuthenticationAcquired"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/c;

    invoke-static {p1}, Lcom/samsung/android/sdk/pass/c;->a(Lcom/samsung/android/sdk/pass/c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/c;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/c;->a(Lcom/samsung/android/sdk/pass/c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    const-string p1, "SpassFingerprintSDK"

    const-string/jumbo p2, "updateActiveUser : onAuthenticationError"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/c;

    invoke-static {p1}, Lcom/samsung/android/sdk/pass/c;->a(Lcom/samsung/android/sdk/pass/c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/c;

    invoke-static {p2}, Lcom/samsung/android/sdk/pass/c;->a(Lcom/samsung/android/sdk/pass/c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
