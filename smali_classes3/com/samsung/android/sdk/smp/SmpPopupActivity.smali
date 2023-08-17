.class public Lcom/samsung/android/sdk/smp/SmpPopupActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;
.implements Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;
.implements Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmpPopupActivity"


# instance fields
.field private mClearTime:J

.field private mDisplayId:I

.field private mIsFirstDisplay:Z

.field private mIsPLink:Z

.field private mMid:Ljava/lang/String;

.field private mPopupInflater:Lcom/samsung/android/sdk/smp/display/PopupViewInflater;

.field private mSendFeedbackWhenDestroy:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public bgOff()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public bgOn()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public displayFail(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsFirstDisplay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->broadcastFailResult(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public displayFailButRetry()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsFirstDisplay:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->broadcastFailButRetryResult(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public displaySuccess(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->setCurrentDisplayID(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mClearTime:J

    iget-boolean v4, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsFirstDisplay:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->broadcastSuccessResult(Landroid/content/Context;Ljava/lang/String;JZ)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "link_uris"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "body_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v7, p1

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v7, v0

    move-object v8, v7

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsFirstDisplay:Z

    const/4 v6, 0x0

    const-string v2, "display"

    const-string v3, "popup"

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastMarketingDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    const-string v2, "2"

    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClickButton(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsPLink:Z

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getClickIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickCloseButton()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    const-string v2, "2"

    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mPopupInflater:Lcom/samsung/android/sdk/smp/display/PopupViewInflater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->onConfigurationChnaged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_clear"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "activity is started to clear popup"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_popup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "fail to display popup. data not found"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "extra_is_first_display"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsFirstDisplay:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v4, -0x1

    const-string v2, "extra_clear_time"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mClearTime:J

    const-string p1, "mid"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    const/4 p1, -0x1

    const-string v2, "displayid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    const-string/jumbo p1, "template_type"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p1, "p_link"

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsPLink:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstDisplay:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsFirstDisplay:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", clearTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mClearTime:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mid:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", templateType: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isPLink:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mIsPLink:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-wide v3, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mClearTime:J

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    if-ltz p1, :cond_4

    iget p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    if-gtz p1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-static {v5}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->getLayoutResID(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    move-object v4, p1

    move-object v8, p0

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;-><init>(ILjava/lang/String;Landroid/view/WindowManager;Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mPopupInflater:Lcom/samsung/android/sdk/smp/display/PopupViewInflater;

    sget v0, Lcom/samsung/android/sdk/smp/R$id;->pop_wrapper:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->inflateView(Landroid/view/View;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "img_decode_fail"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->displayFail(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->displayFail(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "fail to display popup. invalid params"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->displayFail(Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    const-string p1, "fail to display popup. intent null"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mPopupInflater:Lcom/samsung/android/sdk/smp/display/PopupViewInflater;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mSendFeedbackWhenDestroy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mMid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->broadcastNoActionResult(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->mDisplayId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->getCurrentDisplayID(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->setCurrentDisplayID(Landroid/content/Context;I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "extra_clear"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the activity is started to clear popup"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
