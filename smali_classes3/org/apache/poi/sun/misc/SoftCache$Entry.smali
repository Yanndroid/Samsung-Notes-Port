.class Lorg/apache/poi/sun/misc/SoftCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field private ent:Ljava/util/Map$Entry;

.field public final synthetic this$0:Lorg/apache/poi/sun/misc/SoftCache;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->this$0:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    iput-object p3, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$900(Lorg/apache/poi/sun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/poi/sun/misc/SoftCache;->access$600(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/poi/sun/misc/SoftCache;->access$600(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/sun/misc/SoftCache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/sun/misc/SoftCache$Entry;->this$0:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-static {v2}, Lorg/apache/poi/sun/misc/SoftCache;->access$500(Lorg/apache/poi/sun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
