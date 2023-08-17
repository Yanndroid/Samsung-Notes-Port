.class public final enum Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/data/ContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

.field public static final enum Done:Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

.field public static final enum None:Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

.field public static final enum Todo:Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;->None:Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    new-instance v1, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    const-string v3, "Todo"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;->Todo:Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    new-instance v3, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    const-string v5, "Done"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;->Done:Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;->$VALUES:[Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

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

.method public static getId(Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;->$VALUES:[Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/document/data/ContentData$TaskStatus;

    return-object v0
.end method
