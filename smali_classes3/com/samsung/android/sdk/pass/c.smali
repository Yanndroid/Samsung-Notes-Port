.class final Lcom/samsung/android/sdk/pass/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/c;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/c;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/c;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v5, Lcom/samsung/android/sdk/pass/d;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pass/d;-><init>(Lcom/samsung/android/sdk/pass/c;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pass/c;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method
