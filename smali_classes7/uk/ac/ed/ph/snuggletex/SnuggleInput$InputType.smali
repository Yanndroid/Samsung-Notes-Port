.class public final enum Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/SnuggleInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

.field public static final enum FILE:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

.field public static final enum INPUT_STREAM:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

.field public static final enum READER:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

.field public static final enum STRING:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->STRING:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const-string v3, "FILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->FILE:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    new-instance v3, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const-string v5, "INPUT_STREAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->INPUT_STREAM:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    new-instance v5, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const-string v7, "READER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->READER:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v7, 0x4

    new-array v7, v7, [Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->$VALUES:[Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->$VALUES:[Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    return-object v0
.end method
