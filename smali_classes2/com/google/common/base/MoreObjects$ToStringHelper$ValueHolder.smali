.class Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueHolder"
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public next:Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/base/MoreObjects$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>()V

    return-void
.end method
