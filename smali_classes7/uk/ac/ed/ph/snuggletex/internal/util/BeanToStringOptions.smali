.class public interface abstract annotation Luk/ac/ed/ph/snuggletex/internal/util/BeanToStringOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Luk/ac/ed/ph/snuggletex/internal/util/BeanToStringOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->SHOW_FULL:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
.end method
