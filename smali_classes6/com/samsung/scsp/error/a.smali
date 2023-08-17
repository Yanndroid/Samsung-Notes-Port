.class public final synthetic Lcom/samsung/scsp/error/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/error/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/error/a;

    invoke-direct {v0}, Lcom/samsung/scsp/error/a;-><init>()V

    sput-object v0, Lcom/samsung/scsp/error/a;->a:Lcom/samsung/scsp/error/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/samsung/scsp/error/ErrorSupplier;->a(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;

    move-result-object p1

    return-object p1
.end method
