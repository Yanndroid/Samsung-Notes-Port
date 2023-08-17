.class final Lcom/samsung/android/sdk/pass/SpassFingerprint$a;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pass/SpassFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

.field private b:I

.field private synthetic c:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->b:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method public final onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 4

    const-string v0, ", "

    const-string v1, "SpassFingerprintSDK"

    if-nez p1, :cond_0

    const-string p1, "onFingerprintEvent: null event will be ignored!"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evt : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iget v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->b:I

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFingerprintEvent : completed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/pass/e;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/sdk/pass/e;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onFingerprintEvent: Error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
