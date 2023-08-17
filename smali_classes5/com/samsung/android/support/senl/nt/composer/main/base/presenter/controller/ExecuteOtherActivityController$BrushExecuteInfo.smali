.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrushExecuteInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCurrentPageIndex:I

.field private final mInputBrushPath:Ljava/lang/String;

.field private final mInputThumbPath:Ljava/lang/String;

.field private final mObjectId:Ljava/lang/String;

.field private final mOutputBrushPath:Ljava/lang/String;

.field private final mOutputThumbPath:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mObjectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mInputBrushPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mInputThumbPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mOutputBrushPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mOutputThumbPath:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mCurrentPageIndex:I

    return-void
.end method


# virtual methods
.method public getCurrentPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mCurrentPageIndex:I

    return v0
.end method

.method public getInputBrushPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mInputBrushPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInputThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mInputThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputBrushPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mOutputBrushPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mOutputThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController$BrushExecuteInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method
