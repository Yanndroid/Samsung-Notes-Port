.class public final enum Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/data/ContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum Drawing:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum HandWriting:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum Image:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum Map:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum None:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum Text:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum Voice:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

.field public static final enum Web:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->None:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v1, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v3, "Text"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->Text:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v3, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v5, "Image"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->Image:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v5, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v7, "HandWriting"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->HandWriting:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v7, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v9, "Drawing"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->Drawing:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v9, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v11, "Web"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->Web:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v11, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v13, "Map"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->Map:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    new-instance v13, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const-string v15, "Voice"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->Voice:Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->$VALUES:[Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

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

.method public static getId(Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->$VALUES:[Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/document/data/ContentData$ContentType;

    return-object v0
.end method
