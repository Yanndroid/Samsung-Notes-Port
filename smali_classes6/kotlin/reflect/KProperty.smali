.class public interface abstract Lkotlin/reflect/KProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KProperty$Accessor;,
        Lkotlin/reflect/KProperty$DefaultImpls;,
        Lkotlin/reflect/KProperty$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KCallable<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract getGetter()Lkotlin/reflect/KProperty$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KProperty$Getter<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isConst()Z
.end method

.method public abstract isLateinit()Z
.end method
