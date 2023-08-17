.class final Lcom/samsung/android/sdk/pass/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

.field private final synthetic b:Lcom/samsung/android/fingerprint/FingerprintEvent;

.field private final synthetic c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput-object p3, p0, Lcom/samsung/android/sdk/pass/g;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getFingerIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v3}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/g;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onFinished(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onCompleted()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/g;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "IdentifyListener.onFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
