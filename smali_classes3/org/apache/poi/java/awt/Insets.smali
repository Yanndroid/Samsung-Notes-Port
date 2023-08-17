.class public Lorg/apache/poi/java/awt/Insets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f89ccc5fc1c5cfdL


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Insets;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/Insets;->top:I

    iput p2, p0, Lorg/apache/poi/java/awt/Insets;->left:I

    iput p3, p0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    iput p4, p0, Lorg/apache/poi/java/awt/Insets;->right:I

    return-void
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/Insets;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/Insets;

    iget v0, p0, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v2, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v2, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    iget v2, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Insets;->right:I

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->right:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v1, p0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/apache/poi/java/awt/Insets;->right:I

    iget v3, p0, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v2, v3

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method public set(IIII)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Insets;->top:I

    iput p2, p0, Lorg/apache/poi/java/awt/Insets;->left:I

    iput p3, p0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    iput p4, p0, Lorg/apache/poi/java/awt/Insets;->right:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
