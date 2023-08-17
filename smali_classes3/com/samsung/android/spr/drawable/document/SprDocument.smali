.class public Lcom/samsung/android/spr/drawable/document/SprDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANIMATION_MODE_BATTERY:I = 0xa

.field public static final ANIMATION_MODE_NONE:I = 0x0

.field public static final ANIMATION_MODE_STORAGE_SPACE:I = 0xb

.field public static final ANIMATION_MODE_TIME_DAY_IN_WEEK:I = 0x9

.field public static final ANIMATION_MODE_TIME_HOUR_IN_DAY:I = 0x4

.field public static final ANIMATION_MODE_TIME_HOUR_IN_WEEK:I = 0x8

.field public static final ANIMATION_MODE_TIME_MILLISECOND_IN_DAY:I = 0x1

.field public static final ANIMATION_MODE_TIME_MILLISECOND_IN_WEEK:I = 0x5

.field public static final ANIMATION_MODE_TIME_MINUTE_IN_DAY:I = 0x3

.field public static final ANIMATION_MODE_TIME_MINUTE_IN_WEEK:I = 0x7

.field public static final ANIMATION_MODE_TIME_SECOND_IN_DAY:I = 0x2

.field public static final ANIMATION_MODE_TIME_SECOND_IN_WEEK:I = 0x6

.field public static final DEFAULT_DENSITY_SCALE:F = 2.0f

.field public static final HEADER_SIZE:I = 0x61

.field public static final MAJOR_VERSION:S = 0x3030s

.field public static final MINOR_VERSION:S = 0x3034s

.field public static final REPEAT_MODE_RESTART:B = 0x2t

.field public static final REPEAT_MODE_REVERSE:B = 0x1t

.field public static final RESERVED_SIZE:I = 0x0

.field public static final SPRTAG:I = 0x53505200

.field public static final SVFTAG:I = 0x53564600

.field private static final TAG:Ljava/lang/String; = "SPRDocument"

.field private static mBasePaint:Landroid/graphics/Paint;


# instance fields
.field private isPredraw:Z

.field public final mAnimationInterval:I

.field public final mAnimationMode:I

.field private mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mBottom:F

.field public final mDensity:F

.field private mDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mFileAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mIntrinsic:Lcom/samsung/android/spr/drawable/document/SprDocument;

.field private mIsInitialized:Z

.field public final mLeft:F

.field private mLoadingTime:J

.field public final mName:Ljava/lang/String;

.field public final mNinePatchBottom:F

.field public final mNinePatchLeft:F

.field public final mNinePatchRight:F

.field public final mNinePatchTop:F

.field public final mPaddingBottom:F

.field public final mPaddingLeft:F

.field public final mPaddingRight:F

.field public final mPaddingTop:F

.field private mReferenceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mRepeatCount:I

.field public final mRepeatMode:B

.field public final mRight:F

.field public final mTop:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLoadingTime:J

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw:Z

    iput-object p0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/SprDocument;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    iput p3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    iput p4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    iput p5, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDensity:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatMode:B

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-direct {p2, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(Z)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationInterval:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLoadingTime:J

    iput-boolean v2, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw:Z

    iput-object v0, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/SprDocument;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/samsung/android/spr/drawable/document/SprInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    iput-object v3, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readShort()S

    move-result v7

    iput-short v7, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readShort()S

    move-result v7

    iput-short v7, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v8

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v9

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDensity:F

    iget-short v10, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    const/4 v11, 0x2

    const/16 v12, 0x3030

    if-lt v10, v12, :cond_0

    iget-short v10, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    const/16 v13, 0x3033

    if-lt v10, v13, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v10

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v13

    iput-byte v13, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatMode:B

    goto :goto_0

    :cond_0
    iput v2, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    iput-byte v11, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatMode:B

    move v10, v4

    :goto_0
    iget-short v13, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    if-lt v13, v12, :cond_1

    iget-short v13, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    const/16 v14, 0x3034

    if-lt v13, v14, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationInterval:I

    goto :goto_1

    :cond_1
    iput v2, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    iput v2, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationInterval:I

    :goto_1
    const v13, 0x53505200

    if-eq v3, v13, :cond_3

    const v13, 0x53564600

    if-ne v3, v13, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "wrong file format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    const-string/jumbo v3, "unknown element type:"

    const-string v13, "SPRDocument"

    if-eqz v9, :cond_6

    int-to-long v14, v9

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->getPosition()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v1, v14, v15}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v9

    move v14, v2

    :goto_3
    if-ge v14, v9, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v15

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v2

    if-eq v15, v4, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v17, v5

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v17, v5

    new-instance v2, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {v2, v1}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    :goto_4
    if-eqz v2, :cond_5

    iget-object v4, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v5, v17

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x2

    goto :goto_3

    :cond_6
    move-wide/from16 v17, v5

    int-to-long v4, v7

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_10

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v5

    iget-short v6, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    if-lt v6, v12, :cond_7

    iget-short v6, v1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    const/16 v7, 0x3032

    if-lt v6, v7, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v6

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    const/4 v7, 0x1

    if-eq v5, v7, :cond_e

    const/4 v7, 0x2

    if-eq v5, v7, :cond_d

    const/4 v9, 0x3

    if-eq v5, v9, :cond_c

    const/4 v9, 0x4

    if-eq v5, v9, :cond_b

    const/4 v9, 0x5

    if-eq v5, v9, :cond_a

    const/16 v9, 0x10

    if-eq v5, v9, :cond_9

    const/16 v9, 0x11

    if-eq v5, v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v5, v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    goto :goto_8

    :cond_8
    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;

    invoke-direct {v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_7

    :cond_9
    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    invoke-direct {v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeLine;

    invoke-direct {v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;

    invoke-direct {v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-instance v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;

    invoke-direct {v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    :goto_8
    if-eqz v5, :cond_f

    iget-object v9, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_10
    const/4 v6, 0x0

    int-to-long v2, v8

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    move v2, v6

    :goto_9
    if-ge v2, v10, :cond_11

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x1

    iget v1, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    if-lt v1, v5, :cond_12

    const/16 v2, 0x8

    if-gt v1, v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->applyTimeAnimationMode()V

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v17

    iput-wide v1, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLoadingTime:J

    iput-boolean v5, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLoadingTime:J

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw:Z

    iput-object p0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/SprDocument;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    const/4 v3, 0x0

    move v4, v0

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v4, p1, :cond_8

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "width"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v8, "dp"

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_2

    :cond_1
    const-string v10, "height"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo v10, "viewportHeight"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_2

    :cond_3
    const-string/jumbo v10, "viewportWidth"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_2

    :cond_4
    const-string v9, "autoMirrored"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo v9, "tintMode"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo v9, "tint"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    iput v5, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    iput v6, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    div-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDensity:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    iput v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    iput-byte v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatMode:B

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationInterval:I

    new-instance p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-direct {p1, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(Z)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-direct {v1, v0, p2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    iget-object p2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    return-void

    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "No start tag found"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateAnimationObjectList(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    check-cast v1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    iget-byte v1, v1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->mType:B

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->hasFillAnimation:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-byte v0, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mType:B

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    check-cast p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/spr/drawable/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public appendAnimator(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendFileAttribute(Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendObject(ILcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string p2, "Already closed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->appendObject(ILcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    return-void
.end method

.method public appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    return-void
.end method

.method public appendReference(ILcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string p2, "Already closed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public applyTimeAnimationMode()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    const/16 v4, 0x61

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;

    iget v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;->duration:I

    iget v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    const v5, 0x36ee80

    const v6, 0xea60

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v5, v8

    goto :goto_2

    :pswitch_1
    const v5, 0x5265c00

    goto :goto_1

    :pswitch_2
    move v5, v6

    goto :goto_1

    :pswitch_3
    move v5, v7

    goto :goto_1

    :pswitch_4
    move v5, v8

    :goto_1
    :pswitch_5
    move v8, v9

    goto :goto_2

    :pswitch_6
    move v5, v6

    goto :goto_2

    :pswitch_7
    move v5, v7

    :goto_2
    :pswitch_8
    invoke-static {v4, v3, v8, v5}, Lcom/samsung/android/spr/drawable/animation/interpolator/SprTimeInterpolatorFactory;->get(IIII)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;->updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/SprDocument;
    .locals 5

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    iget-object v4, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-direct {v0, v2}, Lcom/samsung/android/spr/drawable/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    if-lt v1, v3, :cond_1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->applyTimeAnimationMode()V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->clone()Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    sget-boolean v0, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p0, v8, v9}, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/spr/drawable/document/SprDocument;II)V

    :cond_0
    int-to-float v0, v8

    iget v1, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    iget v2, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    sub-float/2addr v1, v2

    div-float v11, v0, v1

    int-to-float v1, v9

    iget v2, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    iget v3, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    sub-float/2addr v2, v3

    div-float v12, v1, v2

    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    iget v2, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    iget v3, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    add-float v4, v2, v0

    add-float v5, v3, v1

    sget-object v13, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    if-gez v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getObject()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_1

    :cond_1
    iget-object v0, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    iget-object v0, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v6, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-boolean v0, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_3

    move/from16 v0, p5

    invoke-static {p1, p0, v8, v9, v0}, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/spr/drawable/document/SprDocument;III)V

    :cond_3
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->close()V

    return-void
.end method

.method public getFileAttribute(I)Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

    return-object p1
.end method

.method public getFileAttributeSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFrameAnimationCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadingTime()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLoadingTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getObject()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReference(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    return-object p1
.end method

.method public getReferenceSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getTotalAttributeCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getTotalAttributeCount()I

    move-result v0

    return v0
.end method

.method public getTotalElementCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getTotalElementCount()I

    move-result v0

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->getTotalSegmentCount()I

    move-result v0

    return v0
.end method

.method public getValueAnimationObjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isIntrinsic()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNinePatch()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPredraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw:Z

    return v0
.end method

.method public preDraw(I)V
    .locals 8

    new-instance v2, Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getObject()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V

    :goto_1
    if-gtz p1, :cond_2

    iput-boolean v7, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw:Z

    :cond_2
    return-void
.end method

.method public removeAnimator(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->removeObject(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public removeObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)Z

    move-result p1

    return p1
.end method

.method public removeReference(ILcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V
    .locals 0

    iget-boolean p2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    if-nez p2, :cond_0

    const-string p1, "SPRDocument"

    const-string p2, "Already closed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)Z
    .locals 12

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    iget v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    iget-boolean v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mIsInitialized:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string p1, "SPRDocument"

    const-string v0, "Already closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v5

    move v9, v8

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

    invoke-virtual {v10}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-byte v11, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->mType:B

    if-eq v11, v7, :cond_3

    goto :goto_0

    :cond_3
    check-cast v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    iget v11, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ne v11, v7, :cond_1

    iget v11, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ne v11, v7, :cond_1

    iget-object p1, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget p1, p1, v5

    iget-object v1, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v1, v1, v5

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    iget-object v3, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    iget-object v10, v10, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v10, v10, v5

    sub-float/2addr v3, v10

    goto :goto_0

    :cond_4
    if-nez v8, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v6

    :goto_1
    add-int/2addr v8, v4

    goto :goto_2

    :cond_6
    move v8, v5

    move v9, v8

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v10, v5

    :goto_3
    if-ge v10, v4, :cond_7

    iget-object v11, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-virtual {v11}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v11

    add-int/2addr v6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const v4, 0x53505200

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v4, 0x3030

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v4, 0x3034

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v4, v8, 0x61

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez v8, :cond_8

    move v4, v5

    goto :goto_4

    :cond_8
    const/16 v4, 0x61

    :goto_4
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v4, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDensity:F

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatMode:B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationMode:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationInterval:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v8, :cond_a

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->mType:B

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_6
    if-ge v5, p1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v1, v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mType:B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeGroup;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_7

    :cond_c
    return v7
.end method
