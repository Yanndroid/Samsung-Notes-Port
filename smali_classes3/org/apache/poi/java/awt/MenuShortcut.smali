.class public Lorg/apache/poi/java/awt/MenuShortcut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1fda185a2682441L


# instance fields
.field public key:I

.field public usesShift:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/MenuShortcut;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/MenuShortcut;->usesShift:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/MenuShortcut;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuShortcut;->equals(Lorg/apache/poi/java/awt/MenuShortcut;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/apache/poi/java/awt/MenuShortcut;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuShortcut;->getKey()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuShortcut;->usesShiftModifier()Z

    move-result p1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->usesShift:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->usesShift:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    not-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    :goto_0
    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuShortcut;->usesShiftModifier()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",usesShiftModifier"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getMenuShortcutKeyMask()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuShortcut;->usesShiftModifier()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyModifiersText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->key:I

    invoke-static {v0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesShiftModifier()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuShortcut;->usesShift:Z

    return v0
.end method
