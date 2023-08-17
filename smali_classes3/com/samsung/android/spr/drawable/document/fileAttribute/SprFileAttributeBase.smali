.class public abstract Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_NINE_PATCH:B = 0x1t

.field public static final TYPE_NONE:B


# instance fields
.field public final mIntrinsic:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

.field public final mType:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->mType:B

    iput-object p0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;->clone()Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

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

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toSPR(Ljava/io/DataOutputStream;)V
.end method
