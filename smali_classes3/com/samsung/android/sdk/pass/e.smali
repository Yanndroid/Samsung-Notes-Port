.class final Lcom/samsung/android/sdk/pass/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

.field private final synthetic b:Lcom/samsung/android/fingerprint/FingerprintEvent;

.field private final synthetic c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput-object p3, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const v1, 0x186a0

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getFingerIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v4}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/e;->b:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onFinished(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$a;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "IdentifyListener.onFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onCompleted()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onStarted()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onReady()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onFinished(I)V

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onCompleted()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/e;->c:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;->onCompleted()V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
