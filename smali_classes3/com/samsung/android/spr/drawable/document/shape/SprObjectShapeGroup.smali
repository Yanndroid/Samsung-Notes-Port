.class public Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;
.super Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPRObjectShapeGroup"


# instance fields
.field private mIsInitialized:Z

.field private final mIsRoot:Z

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    iput-boolean p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    iput-boolean p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public constructor <init>(ZLorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    iput-boolean p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public appendObject(ILcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRObjectShapeGroup"

    const-string p2, "Already finalize"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRObjectShapeGroup"

    const-string v0, "Already finalize"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 8

    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    mul-float/2addr p5, v0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->applyAttribute(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v7

    :goto_0
    if-ge v0, v7, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public finalize()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 11

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v3

    iget-short v4, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3032

    const/16 v6, 0x3030

    if-lt v4, v6, :cond_0

    iget-short v4, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->getPosition()J

    move-result-wide v7

    const/4 v9, 0x1

    if-eq v3, v9, :cond_7

    const/4 v9, 0x2

    if-eq v3, v9, :cond_6

    const/4 v9, 0x3

    if-eq v3, v9, :cond_5

    const/4 v9, 0x4

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-eq v3, v9, :cond_3

    const/16 v9, 0x10

    if-eq v3, v9, :cond_2

    const/16 v9, 0x11

    if-eq v3, v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown element type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "SPRObjectShapeGroup"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v9, v4

    invoke-virtual {p1, v9, v10}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;

    invoke-direct {v9, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-direct {v9, v1, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v9, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    invoke-direct {v9, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeLine;

    invoke-direct {v9, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;

    invoke-direct {v9, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;

    invoke-direct {v9, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    :goto_2
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-short v3, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    if-lt v3, v6, :cond_9

    iget-short v3, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    if-lt v3, v5, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->getPosition()J

    move-result-wide v5

    sub-long/2addr v5, v7

    int-to-long v3, v4

    cmp-long v3, v5, v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong skip size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    :cond_b
    return-void
.end method

.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "rotation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "pivotX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "pivotY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "translateX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, "scaleX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "group"

    if-ne v0, v3, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string v0, "path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    invoke-direct {v2, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_a
    const-string v0, "clip-path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_c
    return-void
.end method

.method public getObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRObjectShapeGroup"

    const-string v0, "Already finalize"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    return-object p1
.end method

.method public getObjectCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSPRSize()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getTotalAttributeCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getTotalAttributeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getTotalElementCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getTotalElementCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTotalSegmentCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getTotalSegmentCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V
    .locals 7

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-boolean v5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v6, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRObjectShapeGroup"

    const-string v0, "Already finalize"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    return-object p1
.end method

.method public removeObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRObjectShapeGroup"

    const-string v0, "Already finalize"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mType:B

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    :cond_1
    return-void
.end method
