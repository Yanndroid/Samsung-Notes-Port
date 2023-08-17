.class public final synthetic Lcom/samsung/scsp/framework/core/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/framework/core/util/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/util/c;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/util/c;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/util/c;->a:Lcom/samsung/scsp/framework/core/util/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
