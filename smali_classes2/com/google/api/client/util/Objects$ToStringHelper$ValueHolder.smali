.class final Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/Objects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueHolder"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public next:Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;

.field public value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/api/client/util/Objects$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/util/Objects$ToStringHelper$ValueHolder;-><init>()V

    return-void
.end method
