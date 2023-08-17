.class public Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/ScspSuppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

.field private final context:Landroid/content/Context;

.field private deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

.field private pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

.field private scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;)Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;)Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;)Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;)Lcom/samsung/scsp/framework/core/ScspConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/scsp/framework/core/ScspSuppliers;
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/ScspSuppliers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/scsp/framework/core/ScspSuppliers;-><init>(Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;Lcom/samsung/scsp/framework/core/ScspSuppliers$1;)V

    return-object v0
.end method

.method public with(Lcom/samsung/scsp/framework/core/ScspConfig;)Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    return-object p0
.end method

.method public with(Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;)Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

    return-object p0
.end method

.method public with(Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;)Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers$Builder;->pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    return-object p0
.end method
