.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLoadFlag:Z

.field private mPenName:Ljava/lang/String;

.field private mSpenObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

.field private mSpenPreviewObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenPenPluginInfo"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenPreviewObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mLoadFlag:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mPenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenPreviewObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mLoadFlag:Z

    return-void
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mPenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-object v0
.end method

.method public getPreviewPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenPreviewObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mLoadFlag:Z

    return v0
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mLoadFlag:Z

    return-void
.end method

.method public setName(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mPenName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPenPluginInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPenObject(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-void
.end method

.method public setPreviewPenObject(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->mSpenPreviewObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-void
.end method
