.class public final enum Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum CLOSE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum DISCARD_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum LOAD:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum LOAD_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum RELOAD:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum SAVE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum SAVE_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

.field public static final enum SNAP_SAVE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->NONE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v3, "CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->CLOSE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v5, "DISCARD_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->DISCARD_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v5, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v7, "LOAD_CACHE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->LOAD_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v9, "LOAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->LOAD:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v9, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v11, "RELOAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->RELOAD:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v11, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v13, "SAVE_CACHE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->SAVE_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v13, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v15, "SAVE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->SAVE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    new-instance v15, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const-string v14, "SNAP_SAVE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->SNAP_SAVE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object v0
.end method
