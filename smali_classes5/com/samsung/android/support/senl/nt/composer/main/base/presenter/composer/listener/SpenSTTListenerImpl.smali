.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;
.super Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList<",
            "Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenSTTListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    return-void
.end method


# virtual methods
.method public addBridgeListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;->addBridgeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onPenDrawingStarted(FFI)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpenToTextPenDrawingStarted x :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onPenDrawingStarted(FFI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecognitionFailed()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onSpenToTextRecognitionFailed "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onRecognitionFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecognitionStarted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onRecognitionStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onRecognitionStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResultInserted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onSpenToTextResultInserted "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onResultInserted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    return-void
.end method

.method public removeBridgeListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenSTTListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;->removeBridgeListener(Ljava/lang/Object;)V

    return-void
.end method
