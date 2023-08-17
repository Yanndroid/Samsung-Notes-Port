.class public Lcom/microsoft/identity/common/java/marker/PerfConstants$ScenarioConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/marker/PerfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScenarioConstants"
.end annotation


# static fields
.field public static final SCENARIO_BROKERED_ACQUIRE_TOKEN_SILENTLY:Ljava/lang/String; = "200"

.field public static final SCENARIO_GENERATE_AT_POP_ASYMMETRIC_KEYPAIR:Ljava/lang/String; = "300"

.field public static final SCENARIO_NON_BROKERED_ACQUIRE_TOKEN_SILENTLY:Ljava/lang/String; = "100"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
