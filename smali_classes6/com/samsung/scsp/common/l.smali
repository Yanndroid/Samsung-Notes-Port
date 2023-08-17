.class public final synthetic Lcom/samsung/scsp/common/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/common/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/common/l;

    invoke-direct {v0}, Lcom/samsung/scsp/common/l;-><init>()V

    sput-object v0, Lcom/samsung/scsp/common/l;->a:Lcom/samsung/scsp/common/l;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/scsp/common/PreferenceItem;

    invoke-static {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->g(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method
