.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private final mBeamController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

.field private final mContext:Landroid/content/Context;

.field private final mDestPath:Ljava/lang/String;

.field private final mShareData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

.field private mShareWNote:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mDestPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mBeamController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mShareData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mShareWNote:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    return-void
.end method


# virtual methods
.method public getBeamController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mBeamController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDestPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mDestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShareData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mShareData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    return-object v0
.end method

.method public getShareWNote()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;->mShareWNote:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    return-object v0
.end method
