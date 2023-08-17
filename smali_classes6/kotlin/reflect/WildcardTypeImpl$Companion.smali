.class public final Lkotlin/reflect/WildcardTypeImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/WildcardTypeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/WildcardTypeImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSTAR()Lkotlin/reflect/WildcardTypeImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/reflect/WildcardTypeImpl;->access$getSTAR$cp()Lkotlin/reflect/WildcardTypeImpl;

    move-result-object v0

    return-object v0
.end method
