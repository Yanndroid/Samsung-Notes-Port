.class public final enum Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/TestConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum CONNECT:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum DISCONNECT:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum END_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum QUERY_MEETING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum SEND_DATA:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum SEND_QUERY_CO_DOING_STATE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

.field public static final enum START_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->CONNECT:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v3, "DISCONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->DISCONNECT:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    new-instance v3, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v5, "QUERY_MEETING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->QUERY_MEETING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    new-instance v5, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v7, "START_CO_DOING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->START_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    new-instance v7, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v9, "END_CO_DOING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->END_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    new-instance v9, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v11, "SEND_DATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->SEND_DATA:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    new-instance v11, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const-string v13, "SEND_QUERY_CO_DOING_STATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->SEND_QUERY_CO_DOING_STATE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->$VALUES:[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->$VALUES:[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    return-object v0
.end method
