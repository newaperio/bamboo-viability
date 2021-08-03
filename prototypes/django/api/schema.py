import graphene
from graphene_django.types import DjangoObjectType

from .models import IssueGuide, Option, Action, Drawback


class IssueGuideType(DjangoObjectType):
    class Meta:
        model = IssueGuide
        fields = "__all__"


class OptionType(DjangoObjectType):
    class Meta:
        model = Option
        fields = "__all__"


class ActionType(DjangoObjectType):
    class Meta:
        model = Action
        fields = "__all__"


class DrawbackType(DjangoObjectType):
    class Meta:
        model = Drawback
        fields = "__all__"


class Query(object):
    issue_guides = graphene.List(IssueGuideType)

    def resolve_issue_guides(self, context):
        return IssueGuide.objects.all()
