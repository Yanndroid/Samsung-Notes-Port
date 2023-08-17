.class public final enum Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field public static final enum ATTACH_CONTENT:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field public static final enum DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field public static final enum EXECUTE_ACTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field public static final enum SUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

.field public static final enum UNSUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->NONE:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const-string v3, "SUBSCRIBE_SUGGESTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->SUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const-string v5, "DRAW_SUGGESTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    new-instance v5, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const-string v7, "EXECUTE_ACTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->EXECUTE_ACTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const-string v9, "ATTACH_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->ATTACH_CONTENT:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    new-instance v9, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const-string v11, "UNSUBSCRIBE_SUGGESTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->UNSUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    return-object v0
.end method
