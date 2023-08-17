.class public Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDesUuid:Ljava/lang/String;

.field public mIsAlreadyMoved:Z

.field public final mSrcDisplayName:Ljava/lang/String;

.field public final mSrcUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mSrcUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mDesUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mSrcDisplayName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mIsAlreadyMoved:Z

    return-void
.end method


# virtual methods
.method public getDesUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mDesUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAlreadyMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mIsAlreadyMoved:Z

    return v0
.end method

.method public getSrcDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mSrcDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mSrcUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAlreadyMoved()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;->mIsAlreadyMoved:Z

    return-void
.end method
