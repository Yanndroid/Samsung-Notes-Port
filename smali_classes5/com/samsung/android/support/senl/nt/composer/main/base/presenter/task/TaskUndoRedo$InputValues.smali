.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mType:I

.field private mUndoRedoStartEndListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mUndoRedoStartEndListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method


# virtual methods
.method public getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mType:I

    return v0
.end method

.method public getUndoRedoStartEndListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->mUndoRedoStartEndListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;

    return-object v0
.end method
