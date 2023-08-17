.class public Lcom/samsung/android/sdk/pen/engine/ListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenerManager"


# instance fields
.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

.field private mContext:Landroid/content/Context;

.field private mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

.field private mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

.field private mImageAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenImageAnimationListener;

.field private mLayeredPaintingReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;

.field private mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

.field private mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

.field private mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

.field private mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

.field private mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

.field private mReplayAnchorListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayAnchorListener;

.field private mReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;

.field private mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

.field private mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

.field private mSpenSetPaintingDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPaintingDocListener;

.field private mSpenToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

.field private mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenSetPaintingDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPaintingDocListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mImageAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenImageAnimationListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mLayeredPaintingReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayAnchorListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayAnchorListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

    :cond_0
    return-void
.end method

.method public onAddStroke(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;->onAddStroke(I)V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayAnchorListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayAnchorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenReplayAnchorListener;->onCaptureCompleted()V

    :cond_0
    return-void
.end method

.method public onChangeStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;->onChangeStyle(I)V

    :cond_0
    return-void
.end method

.method public onColorPicked(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;->onColorPicked(IFF)V

    return-void
.end method

.method public onEraserChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method

.method public onLayeredPaintingReplayCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mLayeredPaintingReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onLayeredPaintingReplayProgressChangeds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mLayeredPaintingReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;->onProgressChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onPageDocCompleted(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenSetPageDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;->onCompleted(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    :cond_0
    return-void
.end method

.method public onPageDocCompleted(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenSetPaintingDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPaintingDocListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSetPaintingDocListener;->onCompleted(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;)V

    :cond_0
    return-void
.end method

.method public onPenChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method

.method public onPreTouchView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRemoverChanged(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    :cond_0
    return-void
.end method

.method public onReplayCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onReplayProgressChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;->onProgressChanged(II)V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    :cond_0
    return-void
.end method

.method public onToastShow(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;->show(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public onTouchView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    return-void
.end method

.method public setEraserChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    return-void
.end method

.method public setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    return-void
.end method

.method public setPenDetachmentListener(Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.pen.INSERT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;-><init>(Lcom/samsung/android/sdk/pen/engine/ListenerManager;Lcom/samsung/android/sdk/pen/engine/ListenerManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mDetachReceiver:Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method

.method public setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    return-void
.end method

.method public setRemoverChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mRemoverChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;

    return-void
.end method

.method public setReplayAnchorListener(Lcom/samsung/android/sdk/pen/engine/SpenReplayAnchorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayAnchorListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayAnchorListener;

    return-void
.end method

.method public setReplayListener(Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mLayeredPaintingReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenLayeredPaintingReplayListener;

    return-void
.end method

.method public setReplayListener(Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mReplayListener:Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;

    return-void
.end method

.method public setSelectionChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSelectionChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;

    return-void
.end method

.method public setSetPaintingDocListener(Lcom/samsung/android/sdk/pen/engine/SpenSetPaintingDocListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenSetPaintingDocListener:Lcom/samsung/android/sdk/pen/engine/SpenSetPaintingDocListener;

    return-void
.end method

.method public setToastActionListenerner(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mSpenToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method
