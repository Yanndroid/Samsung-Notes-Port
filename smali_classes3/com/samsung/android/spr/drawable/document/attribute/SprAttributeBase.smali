.class public abstract Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_ANIMATOR_SET:B = 0x61t

.field public static final TYPE_CLIP:B = 0x1t

.field public static final TYPE_CLIP_PATH:B = 0x3t

.field public static final TYPE_DURATION:B = 0x60t

.field public static final TYPE_FILL:B = 0x20t

.field public static final TYPE_MATRIX:B = 0x40t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_SHADOW:B = 0x70t

.field public static final TYPE_STROKE:B = 0x23t

.field public static final TYPE_STROKE_LINECAP:B = 0x25t

.field public static final TYPE_STROKE_LINEJOIN:B = 0x26t

.field public static final TYPE_STROKE_MITERLIMIT:B = 0x29t

.field public static final TYPE_STROKE_WIDTH:B = 0x28t


# instance fields
.field public final mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

.field public final mType:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    iput-object p0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
.end method

.method public getSPRSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toSPR(Ljava/io/DataOutputStream;)V
.end method
