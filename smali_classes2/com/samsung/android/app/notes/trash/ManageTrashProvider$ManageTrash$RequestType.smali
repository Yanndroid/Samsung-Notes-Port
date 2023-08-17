.class public final enum Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

.field public static final enum TRASH_INTENT_ACTION:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

.field public static final enum TRASH_INTERNAL_CAPACITY:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

.field public static final enum TRASH_ITEM_COUNT:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

.field public static final enum TRASH_SDCARD_CAPACITY:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    const-string v1, "TRASH_INTERNAL_CAPACITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->TRASH_INTERNAL_CAPACITY:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    new-instance v1, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    const-string v3, "TRASH_SDCARD_CAPACITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->TRASH_SDCARD_CAPACITY:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    new-instance v3, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    const-string v5, "TRASH_INTENT_ACTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->TRASH_INTENT_ACTION:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    new-instance v5, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    const-string v7, "TRASH_ITEM_COUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->TRASH_ITEM_COUNT:Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->$VALUES:[Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->$VALUES:[Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/trash/ManageTrashProvider$ManageTrash$RequestType;

    return-object v0
.end method
