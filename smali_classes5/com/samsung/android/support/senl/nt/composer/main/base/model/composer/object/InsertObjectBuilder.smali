.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommitHistory:Z

.field private mFitWidth:Z

.field private mFixedMaxPage:Z

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

.field private mPosition:Landroid/graphics/PointF;

.field private mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

.field private mWithMargin:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ObjectInserterBuilder"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFitWidth:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mWithMargin:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFixedMaxPage:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mCommitHistory:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Ljava/util/ArrayList;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mObjectList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Ljava/util/ArrayList;Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mPosition:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mObjectList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mObjectList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mObjectList:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFitWidth:Z

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mWithMargin:Z

    iget-boolean v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFixedMaxPage:Z

    iget-boolean v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mCommitHistory:Z

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mPosition:Landroid/graphics/PointF;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mObjectList:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFitWidth:Z

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mWithMargin:Z

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFixedMaxPage:Z

    iget-boolean v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mCommitHistory:Z

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->TAG:Ljava/lang/String;

    const-string v2, "build# mPage and mPosition are null."

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->TAG:Ljava/lang/String;

    const-string v2, "build# mObjectList is null."

    goto :goto_0
.end method

.method public setCommitHistory(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mCommitHistory:Z

    return-object p0
.end method

.method public setFitWidth(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFitWidth:Z

    return-object p0
.end method

.method public setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mFixedMaxPage:Z

    return-object p0
.end method

.method public setWithMargin(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->mWithMargin:Z

    return-object p0
.end method
