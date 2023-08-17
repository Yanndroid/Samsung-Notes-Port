.class public final synthetic Lcom/samsung/scsp/common/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/common/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/common/g;

    invoke-direct {v0}, Lcom/samsung/scsp/common/g;-><init>()V

    sput-object v0, Lcom/samsung/scsp/common/g;->a:Lcom/samsung/scsp/common/g;

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

    invoke-static {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->b(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method
