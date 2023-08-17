.class public Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    return-void
.end method

.method private native Element_addAttribute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native Element_construct()J
.end method

.method private native Element_finalize(J)V
.end method

.method private native Element_getAttribute(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native Element_getAttributeCount(J)I
.end method

.method private native Element_getAttributeKeys(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native Element_getName(J)Ljava/lang/String;
.end method

.method private native Element_hasAttributeKey(JLjava/lang/String;)Z
.end method

.method private native Element_isEnd(J)Z
.end method

.method private native Element_setEnd(JZ)V
.end method

.method private native Element_setName(JLjava/lang/String;)V
.end method

.method private native Element_toString(J)Ljava/lang/String;
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_addAttribute(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_finalize(J)V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_getAttribute(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeCount()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_getAttributeCount(J)I

    move-result v0

    return v0
.end method

.method public getAttributeKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_getAttributeKeys(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributeKey(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_hasAttributeKey(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEnd()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_isEnd(J)Z

    move-result v0

    return v0
.end method

.method public setEnd(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_setEnd(JZ)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_setName(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->Element_toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
