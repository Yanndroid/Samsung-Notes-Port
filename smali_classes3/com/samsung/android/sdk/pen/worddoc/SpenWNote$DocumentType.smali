.class public final enum Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

.field public static final enum LOCKED_SDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

.field public static final enum LOCKED_SNB:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

.field public static final enum LOCKED_SPD:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

.field public static final enum LOCKED_TMEMO:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

.field public static final enum LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

.field public static final enum UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const-string v1, "UNLOCKED_DOC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    new-instance v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const-string v3, "LOCKED_SDOC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_SDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    new-instance v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const-string v5, "LOCKED_SPD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_SPD:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    new-instance v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const-string v7, "LOCKED_SNB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_SNB:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    new-instance v7, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const-string v9, "LOCKED_TMEMO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_TMEMO:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    new-instance v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const-string v11, "LOCKED_WDOC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->$VALUES:[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->$VALUES:[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    return-object v0
.end method
