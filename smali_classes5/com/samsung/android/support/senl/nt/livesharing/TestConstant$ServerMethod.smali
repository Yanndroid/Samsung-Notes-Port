.class public final enum Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/TestConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

.field public static final enum END_CONNECTION:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

.field public static final enum FAILURE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

.field public static final enum QUERY_CO_DOING_STATE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

.field public static final enum STATE_CHANGED:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

.field public static final enum SUCCESS:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->SUCCESS:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->FAILURE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    new-instance v3, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    const-string v5, "END_CONNECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->END_CONNECTION:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    new-instance v5, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    const-string v7, "STATE_CHANGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->STATE_CHANGED:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    new-instance v7, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    const-string v9, "QUERY_CO_DOING_STATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->QUERY_CO_DOING_STATE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->$VALUES:[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->$VALUES:[Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    return-object v0
.end method
