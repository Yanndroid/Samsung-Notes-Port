.class public Lorg/apache/http/config/MessageConstraints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/config/MessageConstraints$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/config/MessageConstraints;


# instance fields
.field private final maxHeaderCount:I

.field private final maxLineLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/MessageConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/config/MessageConstraints$Builder;->build()Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    sput-object v0, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/http/config/MessageConstraints;->maxLineLength:I

    iput p2, p0, Lorg/apache/http/config/MessageConstraints;->maxHeaderCount:I

    return-void
.end method

.method public static copy(Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/config/MessageConstraints$Builder;
    .locals 2

    const-string v0, "Message constraints"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/http/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/MessageConstraints$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/MessageConstraints$Builder;->setMaxHeaderCount(I)Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/http/config/MessageConstraints$Builder;->setMaxLineLength(I)Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/http/config/MessageConstraints$Builder;
    .locals 1

    new-instance v0, Lorg/apache/http/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/MessageConstraints$Builder;-><init>()V

    return-object v0
.end method

.method public static lineLen(I)Lorg/apache/http/config/MessageConstraints;
    .locals 2

    new-instance v0, Lorg/apache/http/config/MessageConstraints;

    const-string v1, "Max line length"

    invoke-static {p0, v1}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/http/config/MessageConstraints;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/config/MessageConstraints;->clone()Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/http/config/MessageConstraints;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/config/MessageConstraints;

    return-object v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    iget v0, p0, Lorg/apache/http/config/MessageConstraints;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    iget v0, p0, Lorg/apache/http/config/MessageConstraints;->maxLineLength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[maxLineLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/MessageConstraints;->maxLineLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/config/MessageConstraints;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
