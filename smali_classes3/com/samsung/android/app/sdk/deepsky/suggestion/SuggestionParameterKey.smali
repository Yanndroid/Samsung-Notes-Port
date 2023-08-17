.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;",
        "",
        "()V",
        "CANDIDATE_ACTION_LIST",
        "",
        "CONDITION_AND",
        "CONTEXT_FILTER_LIST",
        "IMAGE_OBJECT",
        "KNOWLEDGE",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CANDIDATE_ACTION_LIST:Ljava/lang/String; = "candidate_action_list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONDITION_AND:Ljava/lang/String; = "condition_and"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONTEXT_FILTER_LIST:Ljava/lang/String; = "context_filter_list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IMAGE_OBJECT:Ljava/lang/String; = "suggestion_image_object"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KNOWLEDGE:Ljava/lang/String; = "knowledge"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionParameterKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
